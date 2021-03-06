class BookingsController < ApplicationController
  skip_after_action :verify_authorized, only: [:new, :create]

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
    @bookings = Booking.all
    @bookings = @bookings.where(user: current_user)
    authorize @bookings
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
    @rent_range = @booking.date_range
    @booking.end_date = @booking.start_date.next_year(@rent_range)
    if @booking.save
      redirect_to @plot
    else
      render :new
    end
  end

  def edit
    set_booking
    authorize @booking
  end

  def update
    set_booking
    @plot = @booking.plot
    authorize @booking
    if @booking.update(booking_params)
      redirect_to user_path(current_user), notice: "Booking was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to user_path(current_user), notice: "Booking was successfully canceled"
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :date_range)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
