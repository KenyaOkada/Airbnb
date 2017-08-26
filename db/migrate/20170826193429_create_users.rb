class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.varchar :name
      t.varchar :mail
      t.varchar :password
      t.tinyint :gender
      t.string :user_name
      t.string :varchar

      t.timestamps
    end
  end
end
