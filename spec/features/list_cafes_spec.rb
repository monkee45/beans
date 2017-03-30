require 'rails_helper'

describe "Viewing the list of cafes" do
  it "shows the cafes" do
    cafe1 = House.create(cafe_attributes)
    cafe2 = House.create(cafe_attributes(name: "Jack and The Juice", capacity: 101))
    cafe3 = House.create(cafe_attributes(name: "The Shirt Bar", capacity: 52))

    visit houses_url

    expect(page).to have_text("3 Cafes")
    expect(page).to have_text(cafe1.name)
    expect(page).to have_text(cafe2.name)
    expect(page).to have_text(cafe3.name)
    expect(page).to have_text(cafe1.address)
    expect(page).to have_text(cafe2.website)
    expect(page).to have_text(cafe3.owner)
    expect(page).to have_text(cafe1.capacity)
    expect(page).to have_text(cafe2.capacity)
    expect(page).to have_text(cafe3.capacity)
    expect(page).to have_text("Large")
    expect(page).to have_text("Medium")
  end

  it "does not show closed cafes" do
    cafe1 = House.create(cafe_attributes(status: "Closed"))
    visit houses_url
    expect(page).not_to have_text(cafe1.name)
  end
end
