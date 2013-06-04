class CaptionedImagesController < ApplicationController
  respond_to :html, :json

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

    respond_with @captioned_image
  end

  # GET /captioned_images/new
  # GET /captioned_images/new.json
  def new
    if params[:source_image_id]
      @source_image     = SourceImage.find(params[:source_image_id])
      @captioned_image  = @source_image.captioned_images.new
    end

    respond_with @captioned_image
  end

  def edit
    @captioned_image  = CaptionedImage.includes(:source_image).find(params[:id])
    @source_image     = @captioned_image.source_image

    respond_with @captioned_image
  end

  # POST /captioned_images
  # POST /captioned_images.json
  def create
    if params[:source_image_id]
      @source_image     = SourceImage.find(params[:source_image_id])
      @captioned_image  = @source_image.captioned_images.create params[:captioned_image]
    end

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
