class DashboardsController < ApplicationController
  before_action :authenticate_user!
  

  def index
  end

  def animals
  end

  def bookings
    @booking = Booking.all
    @user = User.all
    @animals = Animal.all
  end
end
