require 'rails_helper'

describe 'Navigating Cafes' do
  it 'allows navigation from detail to the main listing page' do
    cafe1 = House.create(cafe_attributes)

    visit house_url(cafe1)
    click_link ('All Cafes')
    expect(current_path).to eq(houses_path)
  end

  it 'allows navigation from main listing page to cafe detail' do
    cafe1 = House.create(cafe_attributes)
    visit houses_url
    click_link (cafe1.name)
    expect(current_path).to eq(house_path(cafe1))
  end

end
