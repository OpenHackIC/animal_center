class SourceImagesController < ApplicationController
  # GET /source_images
  # GET /source_images.json
  def index
    @source_images = SourceImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @source_images }
    end
  end
end
