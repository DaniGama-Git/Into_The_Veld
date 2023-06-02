class CarsController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]

  def index
    @cars = policy_scope(Car)
  end

  def show
    authorize @car
    @booking = Booking.new
  end

  def new
    @car = Car.new
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id
    authorize @car
    if @car.save
      redirect_to @car, notice: "#{@car.title} has been successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @car
  end

  def update
    authorize @car
    if @car.update(car_params)
      redirect_to @car, notice: "#{@car.title} has been successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @car
    @car.destroy
    redirect_to cars_url, notice: "#{@car.title} has been successfully destroyed"
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:title, :description, :price, :start_date, :end_date, :make, :model, :accomodation, :cooking, :seats, :consumption, photos: [])
  end
end
