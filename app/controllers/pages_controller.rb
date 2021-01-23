class PagesController < ApplicationController
  def home
    @animals = Animal.first(6)
  end
end
