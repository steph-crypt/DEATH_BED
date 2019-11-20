class BookingsController < ApplicationController
  def new
    @plot = Plot.find(params[:plot_id])
    @booking = Booking.new
  end

  def create
    @plot = Plot.find(params[:plot_id])
    @booking = Booking.new(booking_params)
    @booking.ploat = @plot
    if @booking.save
      redirect_to plot_path(@plot)
    else
      render :new
    end

    private

  def booking_params
    params.require(:booking).permit(:description)
  end
end
