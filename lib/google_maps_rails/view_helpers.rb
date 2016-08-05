module GoogleMapsRails
  module ViewHelpers
    def embed_google_maps(options = {})
      width = options[:width] || 500
      height = options[:height] || 500
      lat = options[:lat] || nil
      long = options[:long] || nil
      address = options[:address] || nil

      if options[:lat] && options[:long]
        "<iframe src='https://maps.google.com/maps?q=#{lat},#{long}&amp;output=embed' frameborder='0' style='border:0' width='#{width}' height='#{height}' allowfullscreen></iframe>"
      elsif options[:address]
        "<iframe src='https://maps.google.com/maps?q=#{prepare_address(address)}&amp;output=embed' frameborder='0' style='border:0' width='#{width}' height='#{height}' allowfullscreen></iframe>"
      else
        "latitude, longitude or address not found. See documentation"
      end
    end

    def prepare_address(address)
      address.gsub!(',', '%2C')
      address.gsub!(' ', '%20')
    end
  end
end
