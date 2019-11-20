class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @bookings = @bookings.where(user: current_user)
  end

  def new
    @plot = Plot.find(params[:plot_id])
    @booking = Booking.new
  end

  def create
    @plot = Plot.find(params[:plot_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.plot = @plot
    if @booking.save!
      redirect_to @plot
    else
      render :new
    end
  end
end
