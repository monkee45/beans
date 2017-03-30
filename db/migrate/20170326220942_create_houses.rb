class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :phone
      t.string :website
      t.string :owner
      t.integer :capacity

      t.timestamps
    end
  end
end
