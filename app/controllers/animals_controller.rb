class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.save

    redirect_to animals_path
  end

  private

  def animals_params
    params.require(:animal).permit(:name, :description, :animal_type, :photo, :address, :start_date, :end_date)
  end
end
