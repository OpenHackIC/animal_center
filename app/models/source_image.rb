class SourceImage < ActiveRecord::Base
  attr_accessible :category, :external_id, :url
  has_many :captioned_images
  
def makeString (id=source_image.external_id) 
  puts "http://www.icanimalcenter.org/indexa.php?id=#{id}"
end
end
