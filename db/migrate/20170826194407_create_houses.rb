class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.varchar :house_name
      t.integer :user_id
      t.varchar :house_description
      t.integer :price
      t.varchar :adress
      t.tinyint :house_state

      t.timestamps
    end
  end
end
