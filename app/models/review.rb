class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  validates :rate, presence: true, inclusion: (1..5)
end
