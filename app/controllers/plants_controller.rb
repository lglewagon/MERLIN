class PlantsController < ApplicationController
    def index 
        @garden     = Garden.find(params[:garden_id])
        @square     = Square.new
        @all_plants = Plant.all
        if params[:query]
          @plants = @all_plants.where("name ILIKE ?", "%#{params[:query]}%")
        else
          @plants = @all_plants
        end
    end

    def destroy
      @plant  = Plant.find(params[:id])
      @garden = Garden.find(params[:garden_id])
      @square = Square.where(plant: @plant, garden: @garden).first
      @square.update(plant_id: nil)
      redirect_to garden_path(@garden)
    end

end
