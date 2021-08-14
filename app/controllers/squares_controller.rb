class SquaresController < ApplicationController

    def new 
        @square = Square.new
    end

    def create 
        @square = Square.new(params[:square])
        @square.save
    end

    def update 
        @square = Square.find(params[:id])
        @square.update(params[:square])
    end 

    private

  def square_params
    params.require(:square).permit(:length_fix, :width_fix, :position_x, :position_y, :planting_date, :harvest_date, :garden_id, :plant_id)
  end


end
