class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @animal = Animal.find(params[:animal_id])
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @start_date = params[:booking][:start_date]
    @end_date = params[:booking][:end_date]
    @booking = Booking.new(animal: @animal, start_date: @start_date, end_date: @end_date, user_id: current_user.id)
    if @booking.save!
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end
end
