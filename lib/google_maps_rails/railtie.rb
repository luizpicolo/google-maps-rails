require 'google_maps_rails/view_helpers'

module GoogleMapsRails
  class Railtie < Rails::Railtie
    initializer "google_maps_rails" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
