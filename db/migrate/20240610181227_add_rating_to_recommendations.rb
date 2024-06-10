class AddRatingToRecommendations < ActiveRecord::Migration[7.1]
  def change
    add_column :recommendations, :rating, :integer
  end
end
