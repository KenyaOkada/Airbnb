class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :user_id
      t.integer :house_id
      t.datetime :update

      t.timestamps
    end
  end
end
