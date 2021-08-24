class SquaresController < ApplicationController

    def new 
        @garden = Garden.find(params[:garden_id])
        @square = Square.new
    end

    def create
        @square = Square.new(square_params)
        if @square.save
          redirect_to garden_path(@square[:garden_id])
        else
          render :new
        end
    end

    def update 
        @square = Square.find(params[:garden_id])
        @square.update(square_params)
    end 

    private

  def square_params
    params.require(:square).permit(:length_fix, :width_fix, :position_x, :position_y, :planting_date, :harvest_date, :garden_id, :plant_id)
  end

end
