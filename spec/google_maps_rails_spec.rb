require 'spec_helper'

describe GoogleMapsRails do
  it 'return iframe with latitude and longitude params ' do
    embed = embed_google_maps(lat: '-20.262197', long: '-54.799805', width: '250', height: '250')
    expect(embed).to eq("<iframe src='https://maps.google.com/maps?q=-20.262197,-54.799805&amp;output=embed' frameborder='0' style='border:0' width='250' height='250' allowfullscreen></iframe>")
  end

  it 'return iframe with address params' do
    embed = embed_google_maps(address: 'name address, 5555', width: '250', height: '250')
    expect(embed).to eq("<iframe src='https://maps.google.com/maps?q=name%20address%2C%205555&amp;output=embed' frameborder='0' style='border:0' width='250' height='250' allowfullscreen></iframe>")
  end

  it 'return error message if wrong params' do
    embed = embed_google_maps()
    expect(embed).to eq("latitude, longitude or address not found. See documentation")
  end
end
