class Animal < ApplicationRecord
  belongs_to :user
  belongs_to :specie
  belongs_to :bleed
  has_many :bookings
  has_many :reviews, through: :bookings
end
