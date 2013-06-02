require 'addressable/uri'

module SimpleMemeCaptainClient
  class << self
    # Params:
    #
    # * `u`:  image URL
    # * `t1`: top text
    # * `t2`: bottom text
    def captioned_image_url(params)
      uri = Addressable::URI.new
      uri.query_values = params
      [base_url, uri.query].join('?')
    end

    private

    def base_url
      'http://v1.memecaptain.com/i'
    end
  end
end
