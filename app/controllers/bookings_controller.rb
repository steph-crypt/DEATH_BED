class BookingsController < ApplicationController
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
