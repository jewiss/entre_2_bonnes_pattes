class Animal < ApplicationRecord
  belongs_to :user
  belongs_to :specie
  belongs_to :bleed
  has_many :bookings
  has_many :reviews, through: :bookings
  SEXE = ["Male", "Femelle"]
  has_many_attached :photos


  validates :sex, inclusion: { in: SEXE }
  validates :age, inclusion: {in: 1..20 }
  validates :name, :age, :sex, :photos, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :user, presence: true # Propriétaire du chien

end
