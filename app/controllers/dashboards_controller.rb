class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index_offers
    @animals = current_user.animals
  end

  def index_bookings
    @animals = current_user.animals.bookings
  end

end
