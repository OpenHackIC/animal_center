class SourceImage < ActiveRecord::Base
  attr_accessible :category, :external_id, :url
  has_many :captioned_images
end
