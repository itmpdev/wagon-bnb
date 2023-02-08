class Property < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  belongs_to :user

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :location, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
