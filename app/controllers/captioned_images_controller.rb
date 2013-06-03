class CaptionedImagesController < ApplicationController
  # GET /captioned_images
  # GET /captioned_images.json
  def index
    @captioned_images = CaptionedImage.order('created_at desc').paginate(page: params[:page], per_page: 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @captioned_images }
    end
  end

  # GET /captioned_images/1
  # GET /captioned_images/1.json
  def show
    @captioned_image = CaptionedImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @captioned_image }
    end
  end

  # GET /captioned_images/new
  # GET /captioned_images/new.json
  def new
    @captioned_image = CaptionedImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @captioned_image }
    end
  end

  # POST /captioned_images
  # POST /captioned_images.json
  def create
    @captioned_image = CaptionedImage.new(params[:captioned_image])

    respond_to do |format|
      if @captioned_image.save
        format.html { redirect_to root_path, notice: 'Captioned image was successfully created.' }
        format.json { render json: @captioned_image, status: :created, location: @captioned_image }
      else
        format.html { render action: "new" }
        format.json { render json: @captioned_image.errors, status: :unprocessable_entity }
      end
    end
  end
end
