require 'rubygems'
require 'httparty'

class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :destroy]
  include HTTParty
  base_uri "api.openweathermap.org"

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
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
    lat = garden_latitude
    lon = garden_longitude
    self.class.get('/data/2.5/weather?lat={lat}&lon={lon}&appid={22bc6e143edc477a4dd14193d5981214}')
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
    params.require(:garden).permit(:length, :width, :latitude, :longitude, :shoe_size)
  end
  
end
