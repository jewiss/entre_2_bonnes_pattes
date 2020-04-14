class Animal < ApplicationRecord
  belongs_to :user
  belongs_to :specie
  belongs_to :bleed
end
