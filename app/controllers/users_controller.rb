class UsersController < ApplicationController
  def dashboard
    @upcoming_bookings = current_user.bookings.where("start_date >= ?", Date.today)
    @old_bookings = current_user.bookings.where("end_date <= ?", Date.today)
    @old_bookings_to_review = @old_bookings.where(review_content: nil)
  end
end
