class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @cars = Car.all
  end

  def dashboard
    @bookings = Booking.where(user: current_user)
    @cars = Car.where(user: current_user)
    @my_car_rentals = Booking.all.select{ |booking| booking.car.user == current_user }
    @requests = @my_car_rentals.select{ |rental| rental.status == "pending" }
    @upcoming = @my_car_rentals.select{ |rental| rental.status == "accepted" && rental.start_date > Date.today }
    @history = @my_car_rentals.select{ |rental| rental.status == "accepted" && rental.end_date < Date.today }
  end
end
