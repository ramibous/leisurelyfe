class CreateRecommendations < ActiveRecord::Migration[7.1]
  def change
    create_table :recommendations do |t|
      t.string :name, null: false
      t.text :description
      t.integer :category, null: false, default: 0
      t.string :price_range
      t.float :price
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.string :address
      t.float :longitude
      t.float :latitude
      t.boolean :kid_friendly
      t.boolean :dog_friendly
      t.boolean :outdoor
      t.string :image_url

      t.timestamps
    end
  end
end
