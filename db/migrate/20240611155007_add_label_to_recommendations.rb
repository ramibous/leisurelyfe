class AddLabelToRecommendations < ActiveRecord::Migration[7.1]
  def change
    add_column :recommendations, :label, :string
  end
end
