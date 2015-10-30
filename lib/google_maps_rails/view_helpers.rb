module GoogleMapsRails
  module ViewHelpers
    def embed_google_maps(lat, long, width = 500, height = 500)
      if lat != '' && long != ''
        "<iframe src = 'https://maps.google.com/maps?q=#{lat},#{long}&hl=es;z=14&amp;output=embed' frameborder='0' style='border:0' width='#{width}' height='#{height}' allowfullscreen></iframe>"
      else
        "latitude or longitude not found"
      end
    end
  end
end
