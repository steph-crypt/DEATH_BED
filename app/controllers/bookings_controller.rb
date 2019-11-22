class BookingsController < ApplicationController
  skip_after_action :verify_authorized, only: [:new, :create]

  def index
    @bookings = Booking.all
    @bookings = @bookings.where(user: current_user)
    authorize @booking
  end

  def new
    @plot = Plot.find(params[:plot_id])
    @booking = Booking.new
  end

  def create
    @plot = Plot.find(params[:plot_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.plot = @plot
    if @booking.save
      redirect_to @plot
    else
      render :new
    end
  end

  def edit
    set_booking
  end

  def update
    set_booking
    authorize @booking
    if @booking.update(booking_params)
      redirect_to bookings_path, notice: "Booking was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to bookings_path, notice: "Booking was successfully canceled"
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
