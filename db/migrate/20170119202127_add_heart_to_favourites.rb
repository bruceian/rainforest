class AddHeartToFavourites < ActiveRecord::Migration
  def change
    add_column :favourites, :heart, :boolean
  end
end
