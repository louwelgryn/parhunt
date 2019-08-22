class UsersController < ApplicationController
  def dashboard
    @upcoming_bookings = current_user.bookings.where("start_date >= ?", Date.today)
    @old_bookings = current_user.bookings.where("end_date <= ?", Date.today)
    @old_bookings_to_review = @old_bookings.where(review_content: nil)
    @reviewed_old_bookings = @old_bookings.where.not(review_content: nil)

    if current_user.couple.nil?
      @bookings_to_validate = ""
    else
      @bookings_to_validate = current_user.couple.bookings.where("status = ?", "en attente")
    end
  end
end
