class WildlifeTrackersController < ApplicationController
    def index
        animals = WildlifeTracker.all
        render json: animals
    end
    def show
        animal = WildlifeTracker.find(params[:id])
        render json: animal
    end
    def create
        animal = WildlifeTracker.create(animal_params)
        if animal.valid?
            render json: animal
        else 
            render json: animal.errors
        end
    end
    def update
        animal = WildlifeTracker.find(params[:id])
        animal.update(animal_params)
        if animal.valid?
            render json: animal
        else 
            render json: animal.errors
        end
    end
    def destroy
        animal = WildlifeTracker.find(params[:id])
        if animal.destroy
            render json: animal
        else 
            render json: animal.errors
        end
    end
    private
    def animal_params
        params.require(:wildlife_tracker).permit(:common_name, :scientific_binomial)
    end
end
