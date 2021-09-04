class SquaresController < ApplicationController

    def update
        @square = Square.find(params[:id])
        @square.update(square_params)

        if @square.save
          redirect_to garden_path(@square.garden)
        else
          render :new
        end
    end

    def show
      @square = Square.find(params[:id])
      @plant = @square.plant
      @date_de_recolte = @square.planting_date + @plant.harvest_day_after_planting
      @progression = (Date.current - @square.planting_date) / (@date_de_recolte - @square.planting_date).to_f * 100
    end
    

    # def update 
    #   @square = Square.find(params[:id])
    #   @square.update(square_params)
    # end 

    private

  def square_params
    params.require(:square).permit( :plant_id)
  end

end
