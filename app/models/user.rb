class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :animals
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :age, :address, presence: true
end
