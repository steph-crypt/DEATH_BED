class UsersController < ApplicationController

  def show
    set_user
    @plots = Plot.where(user_id: current_user)
    @booking = Booking.find_by_id(params[:id])
    @review = Review.find_by_id(params[:id])
    @review_plots = Booking.where('start_date =< ?', Date.today)

    authorize @plots

    @plots_to_review = current_user.plots

    @current_bookings = current_user.bookings.select do |booking|
      booking.start_date
    end

    @unreviewed_bookings = []

    @current_bookings.select do |booking|
      if booking.review == nil
        @unreviewed_bookings << booking
      end
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(current_user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :photo)
  end
end
