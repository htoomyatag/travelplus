class CreateSouvenirs < ActiveRecord::Migration
  def change
    create_table :souvenirs do |t|
      t.string :name
      t.string :phone
      t.text :address
      t.string :souvenir_type

      t.timestamps null: false
    end
  end
end
