class Animal < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
  # mount_uploader :photo, PhotoUploader
end
