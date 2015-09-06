class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone
      t.text :address
      t.string :restaurant_type

      t.timestamps null: false
    end
  end
end
