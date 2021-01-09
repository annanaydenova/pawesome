class Animal < ApplicationRecord
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader
end
