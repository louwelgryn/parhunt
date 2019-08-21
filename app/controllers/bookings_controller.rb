class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.couple = Couple.find(params[:couple_id])
    @couple = Couple.find(params[:couple_id])
    isbookable = @couple.bookings.all? do |booking|
      (@booking.end_date < booking.start_date) || (booking.end_date < @booking.start_date)
    end
    if isbookable
      @booking.save!
      redirect_to dashboard_path
    else
      @error = true
      render "couples/show"
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.couple = @couple
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :couple_id, :start_date, :end_date, :review_content, :review_rating, :status)
  end
end
