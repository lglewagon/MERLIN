require 'calc_squares'

class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :destroy]

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)

    a = CalcSquares.new(@garden.shoe_size, @garden.width, @garden.lenght, 1)
    n_squares = a.output # [3,5]

    @garden.width_in_squares = n_squares[0] # 3
    @garden.height_in_squares = n_squares[1] # 5


    if @garden.save
      redirect_to garden_path(@garden.id)
    else
      render :new
    end
  end
  
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

  def garden_params
    params.require(:garden).permit(:lenght, :width, :latitude, :longitude, :shoe_size)
  end
  
end
