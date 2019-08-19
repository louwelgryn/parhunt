class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :couple
  STATUS = ['pending', 'accepted', 'rejected']
  validates :end_date, date: { after: :start_date }
end
