class AddPhoneToRecommendations < ActiveRecord::Migration[7.1]
  def change
    add_column :recommendations, :phone, :string
  end
end
