class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :house_name
      t.integer :user_id
      t.string :house_description
      t.integer :price
      t.string :adress
      t.integer :house_state

      t.timestamps
    end
  end
end
