class SourceImage < ActiveRecord::Base
  attr_accessible :category, :external_id, :url
  has_many :captioned_images
  
  def adoption_info_url
    "http://www.icanimalcenter.org/indexa.php?id=#{external_id}"
  end
end
