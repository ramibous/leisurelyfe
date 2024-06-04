class CreateRecommendations < ActiveRecord::Migration[7.1]
  def change
    create_table :recommendations do |t|
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
