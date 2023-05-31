class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.save
    redirect_to booking_path(@booking)
    authorize @booking
  end

  def show
    @booking = Booking.find(params[:id])
    days = @booking.end_date - @booking.start_date
    @booking_price = days * @booking.car.price
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date)
  end
end
