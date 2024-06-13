class Recommendation < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites
  include PgSearch::Model
  # paginari
  paginates_per 10
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  enum category: {
    unknown: 0,
    restaurant: 10,
    street_food: 11,
    event: 20,
    park: 30,
    zoo: 31,
    attraction: 40,
    kids_activity: 41,
    dog_activity: 42,
    biking: 43,
    pets: 44,
    outdoor: 45,
    shopping: 50
  }, _prefix: true, _default: :unknown

  pg_search_scope :search_by_name,
                  against: :name,
                  using: {
                    tsearch: { prefix: true },
                    trigram: { threshold: 0.1 }
                  }
end
