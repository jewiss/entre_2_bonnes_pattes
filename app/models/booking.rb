class Booking < ApplicationRecord
  belongs_to :animal
  belongs_to :user
  has_many :reviews, dependent: :destroy
end
