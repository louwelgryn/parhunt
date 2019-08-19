class CouplesController < ApplicationController
  def new
    @couple = Couple.new
  end

  def create
    @couple = Couple.new(couple_params)
    if @couple.save
      redirect_to couple_path(@couple)
    else
      render :new
    end
  end

  private

  def couple_params
    params.require(:couple).permit(:name, :nickname, :description, :skills, :best_quality, :worst_default, :address, :price, :photo)
  end
end
