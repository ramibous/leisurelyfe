class AddWebUrlToRecommendations < ActiveRecord::Migration[7.1]
  def change
    add_column :recommendations, :web_url, :string
  end
end
