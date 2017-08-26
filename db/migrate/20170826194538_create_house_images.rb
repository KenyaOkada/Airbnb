class CreateHouseImages < ActiveRecord::Migration[5.1]
  def change
    create_table :house_images do |t|
      t.integer :house_id
      t.binary :image

      t.timestamps
    end
  end
end
