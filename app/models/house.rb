class House < ApplicationRecord

  validates :name, :description, :address, :phone, :owner, :image_file_name, :website, :capacity, presence: true
  validates :description, length: { minimum: 25}
  validates :name, uniqueness: true
  validates :description, length: { minimum: 25 }
  validates :capacity, numericality: { greater_than_or_equal_to: 0 }
  validates :image_file_name, allow_blank: true, format: {
    with:    /\w+\.(gif|jpg|png)\z/i,
    message: "must reference a GIF, JPG, or PNG image"
    }


  def small?
   capacity <= 50
  end

  def medium?
   capacity > 50 and capacity <= 100
  end

  def large?
   capacity > 100
  end

  def self.open
    where ("status == 'Open'")
  end

end
