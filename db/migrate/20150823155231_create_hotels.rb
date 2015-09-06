class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :star
      t.string :rate_per_night

      t.timestamps null: false
    end
  end
end
