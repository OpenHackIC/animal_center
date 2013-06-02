require 'test_helper'

class CaptionedImagesControllerTest < ActionController::TestCase
  setup do
    @captioned_image = captioned_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:captioned_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create captioned_image" do
    assert_difference('CaptionedImage.count') do
      post :create, captioned_image: { source_image_id: @captioned_image.source_image_id, text_bottom: @captioned_image.text_bottom, text_top: @captioned_image.text_top, title: @captioned_image.title }
    end

    assert_redirected_to captioned_image_path(assigns(:captioned_image))
  end

  test "should show captioned_image" do
    get :show, id: @captioned_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @captioned_image
    assert_response :success
  end

  test "should update captioned_image" do
    put :update, id: @captioned_image, captioned_image: { source_image_id: @captioned_image.source_image_id, text_bottom: @captioned_image.text_bottom, text_top: @captioned_image.text_top, title: @captioned_image.title }
    assert_redirected_to captioned_image_path(assigns(:captioned_image))
  end

  test "should destroy captioned_image" do
    assert_difference('CaptionedImage.count', -1) do
      delete :destroy, id: @captioned_image
    end

    assert_redirected_to captioned_images_path
  end
end
