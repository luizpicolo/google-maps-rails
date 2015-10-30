# GoogleMapsRails

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

Add the code in local where you want embed the map. Change params "LONG, LAT, WIDTH, HEIGHT"

```ruby
<%= embed_google_maps(LONG, LAT, WIDTH, HEIGHT) %>
```
Example (use http://www.latlong.net/)

```ruby
<%= embed_google_maps('-20.262197', '-54.799805', '250', '250') %>
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/google_maps_rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
