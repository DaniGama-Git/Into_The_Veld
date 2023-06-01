class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @cars = Car.all
  end

  def dashboard
    @bookings = Booking.where(user: current_user)
    @cars = Car.where(user: current_user)
    @my_car_rentals = Booking.all.select{ |booking| booking.car.user == current_user }
  end
end
