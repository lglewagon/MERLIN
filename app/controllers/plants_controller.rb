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
end
