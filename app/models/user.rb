class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :couple
  has_many :bookings
  mount_uploader :photo, PhotoUploader

  def notifications
    if self.couple
      pending_bookings = self.couple.bookings.where("status = ?", "en attente")
      return pending_bookings.length
    else
      return 0
    end
  end
end
