class Couple < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :address, :description, :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates :user, uniqueness: true
  validates :nickname, uniqueness: true
  mount_uploader :photo, PhotoUploader
end
