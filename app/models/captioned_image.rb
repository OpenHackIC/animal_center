class CaptionedImage < ActiveRecord::Base
  attr_accessible :source_image_id, :text_bottom, :text_top, :title
end
