require 'uri'
require 'net/http'
require 'openssl'

class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :destroy]
  url = URI("https://api.tomorrow.io/v4/insights?apikey=z3VfwDg40aXSTHHZXgpVGFMgTQ8zuDtZ")

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
    @garden = Garden.request_api(url)
    Garden.request_api(url)
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

  def request_api(url)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request["Accept"] = 'application/json'
    request["Content-Type"] = 'application/json'
    request.body = "{\"severity\":\"unknown\"}"

    response = http.request(request)
    puts response.read_body
  end
end

