class CaptionedImage < ActiveRecord::Base
  attr_accessible :source_image_id, :text_bottom, :text_top, :title
  belongs_to :source_image

  def image_url
    SimpleMemeCaptainClient.captioned_image_url(u: source_image.url,
                                                t1: text_top,
                                                t2: text_bottom)
  end
end
