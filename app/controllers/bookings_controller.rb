class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @car = Car.find(params[:car_id])
    @booking.car = @car
    if @booking.save
      redirect_to @booking, notice: "#Booking has been successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to @booking, notice: "Booking has been successfully updated."
    else
      redirect_to @booking, notice: "Booking has not been updated."
    end
  end

  def show
    @booking = Booking.find(params[:id])
    days = @booking.end_date - @booking.start_date
    @booking_price = days * @booking.car.price
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date, :status)
  end
end
