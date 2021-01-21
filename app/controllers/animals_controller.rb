class AnimalsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  before_action :set_animal, only: [ :show, :edit, :update, :destroy ]

  def index
    if params[:query].present?
      @animals = Animal.where("animal_type ILIKE ?", "%#{params[:query]}%")
    else
      @animals = Animal.all
    end
    @markers = @animals.geocoded.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude
      }
    end
  end


  def show
    # @animal = Animal.find(params[:id])
    @booking = Booking.new
    @markers = [{
      lat: @animal.latitude,
      lng: @animal.longitude
    }]
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    @animal.save

    redirect_to animals_path
  end

  def edit
  end

  def update
    @animal.update(animal_params)
    redirect_to animal_path(@animal)
  end

  def destroy
    # @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_path
  end

  private

  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :description, :animal_type, :photo, :address, :start_date, :end_date)
  end
end
