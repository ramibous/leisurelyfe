class AddRankingPositionToRecommendations < ActiveRecord::Migration[7.1]
  def change
    add_column :recommendations, :ranking_position, :integer
  end
end
