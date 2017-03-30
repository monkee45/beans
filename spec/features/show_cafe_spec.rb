require 'rails_helper'

describe 'viewing an individual cafes attributes' do
  it 'shows an individual cafe' do
    cafe1 = House.create(cafe_attributes)

    visit house_url(cafe1)

    expect(page).to have_text(cafe1.name)
    expect(page).to have_text(cafe1.description)
    expect(page).to have_text(cafe1.address)
    expect(page).to have_text(cafe1.phone)
    expect(page).to have_text(cafe1.website)
    expect(page).to have_text(cafe1.owner)
    expect(page).to have_text('10 Persons')
  end
end
