class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  geocoded_by :address
  has_many :animals
  has_one :petsitter
  has_one_attached :user_photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :age, :address, presence: true
  after_validation :geocode, if: :will_save_change_to_address?

end
