class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :condo_id
      t.integer :user_id
      t.text :comment

      t.timestamps null: false
    end
  end
end
