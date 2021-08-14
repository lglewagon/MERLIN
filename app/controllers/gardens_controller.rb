class GardensController < ApplicationController

  def new
    @garden = Garden.new
  end

  def index
    @gardens = Garden.all
  end

  def show
    @squares = Square.all
    @garden_id = Garden.find(params[:id])
  end
  
# TODO
  def destroy
  end
end
