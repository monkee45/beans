class AddImageToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :image_file_name, :string, default: ""
  end
end
