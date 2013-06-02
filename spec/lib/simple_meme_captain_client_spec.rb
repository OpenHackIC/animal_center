require 'fast_spec_helper'
require 'simple_meme_captain_client'

describe SimpleMemeCaptainClient do
  describe '.captioned_image_url' do
    context 'given a hash' do
      it 'generates a URL for the simple MemeCaptain HTTP API' do
        url = subject.captioned_image_url(u: 'http://www.example.com/my_image.jpg',
                                    t1: 'text for the top',
                                    t2: 'text for the bottom')

        url.should == 'http://v1.memecaptain.com/i?t1=text%20for%20the%20top&t2=text%20for%20the%20bottom&u=http%3A%2F%2Fwww.example.com%2Fmy_image.jpg'
      end
    end
  end
end
