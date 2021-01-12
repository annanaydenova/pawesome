class Animal < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  # mount_uploader :photo, PhotoUploader
end
