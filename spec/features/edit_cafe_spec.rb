require 'rails_helper'

describe 'Editing a Cafe' do
  it 'updates the cafe and shows the cafes updated details' do
    cafe1 = House.create(cafe_attributes)

    visit house_url(cafe1)
    click_link ('Edit')
    expect(current_path).to eq(edit_house_path(cafe1))

    expect(find_field('Name').value).to eq(cafe1.name)

    fill_in 'Name', with: 'Tres Hombres 2'

    click_button 'Update House'

    expect(current_path).to eq(house_path(cafe1.reload))

    expect(page).to have_text('Tres Hombres 2')
  end

end
