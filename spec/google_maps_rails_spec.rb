require 'spec_helper'

describe GoogleMapsRails do
  it 'return iframe with current params' do
    embed = embed_google_maps('-20.262197', '-54.799805', '250', '250')
    expect(embed).to eq("<iframe src = 'https://maps.google.com/maps?q=-20.262197,-54.799805&hl=es;z=14&amp;output=embed' frameborder='0' style='border:0' width='250' height='250' allowfullscreen></iframe>")
  end

  it 'return message error with wrong params' do
    embed = embed_google_maps('', '', '250', '250')
    expect(embed).to eq("latitude or longitude not found")
  end
end
