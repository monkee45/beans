class AddStatusToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :status, :text
  end
end
