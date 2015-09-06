class CreateTravelNews < ActiveRecord::Migration
  def change
    create_table :travel_news do |t|
      t.string :title
      t.string :content
      t.string :writer

      t.timestamps null: false
    end
  end
end
