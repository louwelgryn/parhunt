class CouplesController < ApplicationController
  def index
    @couples = Couple.all
  end

  def show
    @couple = Couple.find(params[:id])
    @booking = Booking.new
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
