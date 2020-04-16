class Specie < ApplicationRecord
  has_many :animals

  validates :type_animal, presence: true
  validates :type_animal, uniqueness: true
end
