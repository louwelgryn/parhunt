class Couple < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  validates :name, :address, :description, :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates :user, uniqueness: true
  validates :nickname, uniqueness: true

end
