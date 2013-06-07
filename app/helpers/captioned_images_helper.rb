module CaptionedImagesHelper
  def show_hero_unit?
    if !params.has_key?(:page)
      true
    elsif params[:page] == 1
      true
    else
      false
    end
  end
end
