class AddEmailToRecommendations < ActiveRecord::Migration[7.1]
  def change
    add_column :recommendations, :email, :string
  end
end
