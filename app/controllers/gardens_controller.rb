class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :destroy]

  def landing
    
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)

    a = CalcSquares.new(@garden.shoe_size, @garden.width, @garden.length, 50) #last integer -> square_size in cm2
    n_squares = a.output # [3,5]

    
    @garden.width_in_squares = n_squares[0] # 3
    @garden.length_in_squares = n_squares[1] # 5

    @garden.width_in_cm = n_squares[2] 
    @garden.length_in_cm = n_squares[3]

    total_squares = n_squares[0]*n_squares[1]


    total_squares.times do 
      @garden.squares << Square.new(garden_id: @garden.id)
    end

    if @garden.save
      redirect_to garden_path(@garden.id)
    else
      render :new
    end
  end
  
  def index
    @gardens = Garden.all
    # @weather = @gardens.first.weather
    @weather_rain_type = []
    @gardens.each do |garden|
      @weather = garden.weather
      @weather_rain_type = @weather["data"]["timelines"][0]["intervals"][0]["values"]["precipitationType"]
    end
  end

  def find_garden(id)
    @garden = Garden.find(id)
  end


  def show
    # comment définir @squares = Square.all avec l'ID de Garden ?
    @squares = @garden.squares.order(:id)
  end


  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    redirect_to gardens_path
  end

  private


  
  def set_garden
    @garden = Garden.find(params[:id])
  end



  def garden_params
    params.require(:garden).permit(:length, :width, :latitude, :longitude, :shoe_size, :name)
  end

end

