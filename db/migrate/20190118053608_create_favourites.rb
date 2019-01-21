class CreateFavourites < ActiveRecord::Migration[5.0]
  def change
    create_table :favourites do |t|
      t.string :title, null: false, default: ""

      t.timestamps
    end
  end
end
