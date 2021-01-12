class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :omniauthable, :trackable, :timeoutable
  has_many :animals, dependent: :destroy
  has_many :bookings, through: :animals
end
