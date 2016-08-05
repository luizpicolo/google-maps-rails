# GoogleMapsRails

[![Gem Version](https://badge.fury.io/rb/google_maps_rails.svg)](https://badge.fury.io/rb/google_maps_rails)
[![Build Status](https://travis-ci.org/luizpicolo/google-maps-rails.svg?branch=master)](https://travis-ci.org/luizpicolo/google-maps-rails)

This is a simple library for embed google maps in your app rails

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google_maps_rails'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install google_maps_rails

## Usage

Add the code, and create attributes, in local where you want embed the map.

| Attribute   | Type    | Default value |
| ---         | ---     | ---           |
| lat         | String  | nil           |
| long        | String  | nil           |
| address     | String  | nil           |
| width       | String  | 500           |
| height      | String  | 500           |

```ruby
# Lat and Long
embed_google_maps(lat: '-20.262197', long: '-54.799805')

# Address
embed_google_maps(address: 'address name and number')
```

## license

See Mit license http://luizpicolo.mit-license.org/

## Contributing

1. Fork it ( https://github.com/[my-github-username]/google_maps_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
