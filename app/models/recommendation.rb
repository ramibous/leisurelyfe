class Recommendation < ApplicationRecord
  validates :name, presence: true

  attribute :category, :integer
  enum category: {
    unknown: 0,
    restaurant: 10,
    street_food: 11,
    event: 20
  }, _default: :unknown
end
