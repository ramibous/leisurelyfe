class Recommendation < ApplicationRecord
  validates :name, presence: true

  enum category: {
    unknown: 0,
    restaurant: 10,
    street_food: 11,
    event: 20
  }, _prefix: true, _default: :unknown
end
