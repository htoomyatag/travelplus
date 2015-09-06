class CreateAirlines < ActiveRecord::Migration
  def change
    create_table :airlines do |t|
      t.string :name
      t.string :phone
      t.text :address

      t.timestamps null: false
    end
  end
end
