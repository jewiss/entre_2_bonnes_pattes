class Booking < ApplicationRecord
  belongs_to :animal
  belongs_to :user
  has_many :reviews, dependent: :destroy

  STATUS = ['En attente', 'Refusé', 'Accepté'].freeze
  validates :status, inclusion: { in: STATUS }
  validates :start_date, :end_date, presence: true, availability: true, on: :create
  validate :check_date_from_today, :end_date_after_start_date
  validates :animal, :user, presence: true

  private

  def check_date_from_today
    if start_date.present? && start_date < Date.today
      errors.add(:end_date, "must be after today's date")
    end
  end

  def end_date_after_start_date
    if start_date.present? && end_date.present? && end_date <= start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

end
