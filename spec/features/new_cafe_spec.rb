require 'rails_helper'

describe 'Creating a new Cafe' do
  it 'saves a cafe and shows the new cafe details' do
    visit houses_url
    click_link 'Add New Cafe'

    expect(current_path).to eq(new_house_path)

    fill_in 'Name', with: 'Happy TeaTime'
    fill_in 'Description', with: 'A lovely little tea house that does lots of cakes and buns'
    fill_in 'Address', with: 'Penhouse Suite, 27 Arkham Avenue, Sydney'
    fill_in 'Phone', with: '02 9000 9999'
    fill_in 'Website', with: 'http://www.happyteatime.com.au'
    fill_in 'Owner', with: 'Sally Primrose'
    fill_in 'Capacity', with: 150
    fill_in 'Image file name', with: "mycafe.png"

    click_button 'Create House'

    expect(current_path).to eq(house_path(House.last))
    expect(page).to have_text('Happy TeaTime')

  end
end
