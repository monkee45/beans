require 'rails_helper'


#RSpec.describe House, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
#end
describe 'A Cafe' do
  it 'requires a name' do
    cafe = House.new(name: "")
    cafe.valid?
    expect(cafe.errors[:name].any?).to eq(true)
  end
  it 'requires a unique name' do
    cafe1 = House.create!(cafe_attributes)
    cafe2 = House.new(name: cafe1.name)
    cafe2.valid?
    expect(cafe2.errors[:name].first).to eq("has already been taken")
  end
  it 'requires an address' do
    cafe = House.new(address: "")
    cafe.valid?
    expect(cafe.errors[:address].any?).to eq(true)
  end
  it 'requires a description' do
    cafe = House.new(description: "")
    cafe.valid?
    expect(cafe.errors[:description].any?).to eq(true)
  end
  it 'requires a phone number' do
    cafe = House.new(phone: "")
    cafe.valid?
    expect(cafe.errors[:phone].any?).to eq(true)
  end
  it 'requires an owner' do
    cafe = House.new(owner: "")
    cafe.valid?
    expect(cafe.errors[:owner].any?).to eq(true)
  end
  it 'requires an image file' do
    cafe = House.new(image_file_name: "")
    cafe.valid?
    expect(cafe.errors[:image_file_name].any?).to eq(true)
  end
  it 'requires a website' do
    cafe = House.new(website: "")
    cafe.valid?
    expect(cafe.errors[:website].any?).to eq(true)
  end
  it 'requires a capacity' do
    cafe = House.new(capacity: "")
    cafe.valid?
    expect(cafe.errors[:capacity].any?).to eq(true)
  end
  it "requires a description over 24 characters" do
    cafe = House.new(description: "X" * 24)
    cafe.valid?
    expect(cafe.errors[:description].any?).to eq(true)
  end
  it "accepts a positive capacity" do
    cafe = House.new(capacity: 10)
    cafe.valid?
    expect(cafe.errors[:capacity].any?).to eq(false)
  end
  it "rejects a negative total gross" do
    cafe = House.new(capacity: -10)
    cafe.valid?
    expect(cafe.errors[:capacity].any?).to eq(true)
  end
  it "accepts properly formatted image file names" do
    file_names = %w[e.png movie.png movie.jpg movie.gif MOVIE.GIF]
    file_names.each do |file_name|
      cafe = House.new(image_file_name: file_name)
      cafe.valid?
      expect(cafe.errors[:image_file_name].any?).to eq(false)
    end
  end

  it "rejects improperly formatted image file names" do
    file_names = %w[movie .jpg .png .gif moviepng movie.pdf movie.doc]
    file_names.each do |file_name|
      cafe = House.new(image_file_name: file_name)
      cafe.valid?
      expect(cafe.errors[:image_file_name].any?).to eq(true)
    end
  end

end
