require 'spec_helper'

describe CaptionedImage do
   describe '#to_param' do
    it 'has the id and the text' do
      captioned_image = CaptionedImage.new(title: 'Foo Bar Baz')
      captioned_image.stub(:id) { 42 }
      
      captioned_image.to_param.should == '42-foo-bar-baz'
    end
  end
end
