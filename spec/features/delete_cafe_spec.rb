require 'rails_helper'

describe 'deleting a cafe' do
  it 'removes the cafe from the list of cafes' do
    cafe1 = House.create(cafe_attributes)

    visit house_url(cafe1)

    expect(page).to have_text(cafe1.name)
    click_link ('Delete')

    expect(current_path).to eq(houses_path)
    expect(page).not_to have_text(cafe1.name)
  end
end
