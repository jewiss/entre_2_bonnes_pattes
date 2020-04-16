class Bleed < ApplicationRecord
  has_many :animals

  validates :bleed_name, presence: true
  validates :bleed_name, uniqueness: true
end
