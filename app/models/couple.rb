class Couple < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  validates :name, :address, :description, :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates :user, uniqueness: true
  validates :nickname, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average
    if self.bookings.first.present?
      sum = 0
      rated_bookings = self.bookings.where.not(review_rating: nil)
      if rated_bookings.first.present?
        rated_bookings.each do |rated_booking|
          sum += rated_booking.review_rating
        end
        avg_float = sum.fdiv(rated_bookings.count)
        return (avg_float * 2).round / 2.0
      else
        return nil
      end
    else
      return nil
    end
  end
end
