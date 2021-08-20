class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :destroy]

  def new
    @garden = Garden.new
    @square = Square.new
  end

  # Manque route pour create ? http://localhost:3000/gardens --> No route matches [POST] "/gardens"

  def index
    @gardens = Garden.all
  end

  def show
    # comment définir @squares = Square.all avec l'ID de Garden ?
    @squares = @garden.squares
  end

  def destroy
    @garden.destroy
    redirect_to gardens_path
  end
  
  private
  
  def set_garden
    @garden = Garden.find(params[:id])
  end
end
