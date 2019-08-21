class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :couple
  STATUS = ['en attente', 'acceptée', 'rejetée']
  validates :end_date, date: { after: :start_date }
end
