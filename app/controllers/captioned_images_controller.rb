class CaptionedImagesController < ApplicationController
  # GET /captioned_images
  # GET /captioned_images.json
  def index
    @captioned_images = CaptionedImage.all

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

  # GET /captioned_images/1/edit
  def edit
    @captioned_image = CaptionedImage.find(params[:id])
  end

  # POST /captioned_images
  # POST /captioned_images.json
  def create
    @captioned_image = CaptionedImage.new(params[:captioned_image])

    respond_to do |format|
      if @captioned_image.save
        format.html { redirect_to @captioned_image, notice: 'Captioned image was successfully created.' }
        format.json { render json: @captioned_image, status: :created, location: @captioned_image }
      else
        format.html { render action: "new" }
        format.json { render json: @captioned_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /captioned_images/1
  # PUT /captioned_images/1.json
  def update
    @captioned_image = CaptionedImage.find(params[:id])

    respond_to do |format|
      if @captioned_image.update_attributes(params[:captioned_image])
        format.html { redirect_to @captioned_image, notice: 'Captioned image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @captioned_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /captioned_images/1
  # DELETE /captioned_images/1.json
  def destroy
    @captioned_image = CaptionedImage.find(params[:id])
    @captioned_image.destroy

    respond_to do |format|
      format.html { redirect_to captioned_images_url }
      format.json { head :no_content }
    end
  end
end
