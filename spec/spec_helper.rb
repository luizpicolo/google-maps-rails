require 'bundler/setup'
Bundler.setup

require_relative '../lib/google_maps_rails/view_helpers'

RSpec.configure do |c|
  c.include GoogleMapsRails::ViewHelpers
end
