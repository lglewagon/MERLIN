class PlantsController < ApplicationController

    def index 
        @garden = Garden.find(params[:garden_id])
        @square = Square.new
        @plants = Plant.all
    end



end
