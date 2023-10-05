class WildlifeTrackersController < ApplicationController
    def index
        animal = WildlifeTracker.all
        render json: animal
    end
    def create
        animal = WildlifeTracker.create(animal_params)
        if animal.valid?
            render json: animal
        else render json: animal.errors
        end
    end
    private
    def animal_params
        params.require(:animal).permit(:common_name, :scientific_binomial)
    end
end
