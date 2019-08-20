class BookingsController < ApplicationController
  before_action :set_current_couple, :current_user

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.couple = Couple.find(params[:couple_id])
    @booking.save!
    redirect_to dashboard_path(current_user.dashboard)
  end

  def update
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

  def set_current_couple
    if params[:id]
      @couple = Couple.find(params[:id])
    end
  end


  def booking_params
    params.require(:booking).permit(:user_id, :couple_id, :start_date, :end_date, :review_content, :review_rating, :status)
  end
end
