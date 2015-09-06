class CreateCarlines < ActiveRecord::Migration
  def change
    create_table :carlines do |t|
      t.string :name
      t.string :phone
      t.text :address

      t.timestamps null: false
    end
  end
end
