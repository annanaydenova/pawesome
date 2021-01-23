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
    if @booking.save
      # redirect_to dashboard_path
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    @booking.save
    redirect_to dashboard_bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    @booking.save
    redirect_to dashboard_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end
end
