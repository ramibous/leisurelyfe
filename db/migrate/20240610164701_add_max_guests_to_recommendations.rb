class AddMaxGuestsToRecommendations < ActiveRecord::Migration[7.1]
  def change
    add_column :recommendations, :max_guests, :integer
  end
end
