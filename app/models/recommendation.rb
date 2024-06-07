class Recommendation < ApplicationRecord
  validates :name, presence: true
  enum recommendation_category: {
    unknown: 0,
    restaurant: 10,
    street_food: 11,
    # Add other categories as needed
  }, _prefix: true

  # Declare enum column type explicitly
  attribute :recommendation_category, :integer
end
