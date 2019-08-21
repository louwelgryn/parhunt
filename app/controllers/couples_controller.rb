class CouplesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @couples = Couple.geocoded
    @markers = @couples.map do |couple|
       {
        lat: couple.latitude,
        lng: couple.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { couple: couple })
      }
    end
  end

  def show
    @couple = Couple.find(params[:id])
    @booking = Booking.new
    @old_bookings = @couple.bookings.where("end_date <= ?", Date.today)
    @reviewed_old_bookings = @old_bookings.where.not(review_content: nil)
  end


  def new
    @couple = Couple.new
  end

  def create
    @couple = Couple.new(couple_params)
    @couple.user = current_user
    if @couple.save
      redirect_to couple_path(@couple)
    else
      render :new
    end
  end

  private

  def couple_params
    params.require(:couple).permit(:name, :nickname, :description, :skills, :best_quality, :worst_default, :address, :price, :photo, :user)
  end
end
