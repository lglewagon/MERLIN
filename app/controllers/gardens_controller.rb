class GardensController < ApplicationController

  def new
    @garden = Garden.new
  end

  def index
    @gardens = Garden.all
  end

  def update
  end

  def show
    @squares = Square.all
  end

  def destroy
  end
end
