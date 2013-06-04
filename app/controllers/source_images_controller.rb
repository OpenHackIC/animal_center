class SourceImagesController < ApplicationController
  respond_to :html, :json

  def index
    @source_images = SourceImage.all

    respond_with @source_images
  end
end
