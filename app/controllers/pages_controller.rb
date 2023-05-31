class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @cars = Car.all
  end

  def dashboard
    @bookings = Booking.where(status: 'new')
  end
end
