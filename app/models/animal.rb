class Animal < ApplicationRecord
  belongs_to :user
  belongs_to :specie
  belongs_to :bleed
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, :age, :sex, presence: true
  validates :descriptions, presence: true, length: { minimum: 20 }
  validates :user, presence: true # Propriétaire du chien

end
