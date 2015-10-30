# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_maps_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "google_maps_rails"
  spec.version       = GoogleMapsRails::VERSION
  spec.authors       = ["Luiz Picolo"]
  spec.email         = ["luizpicolo@gmail.com"]
  spec.summary       = %q{Rails helper for embed Google Maps.}
  spec.description   = %q{Rails helper for embed Google Maps.}
  spec.homepage      = "https://github.com/luizpicolo/google-maps-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
