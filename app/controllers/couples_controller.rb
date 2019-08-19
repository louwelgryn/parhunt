class CouplesController < ApplicationController


  def index
    @couples = Couple.all
  end

end
