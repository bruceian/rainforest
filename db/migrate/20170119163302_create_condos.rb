class CreateCondos < ActiveRecord::Migration
  def change
    create_table :condos do |t|
      t.integer :number_of_rooms
      t.boolean :den
      t.integer :price
      t.text :description
      t.integer :unit

      t.timestamps null: false
    end
  end
end
