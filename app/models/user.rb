class User < ApplicationRecord
  has_many :favorites
  has_many :recommendations, through: :favorites

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
