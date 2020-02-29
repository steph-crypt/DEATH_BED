class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :check_authorization, only: [:edit, :update]
  before_action :set_user
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
    @user.edit(user_params)
  end

  def update
    @user.update(user_params)
    @user.update_attribute(:avatar, params[:user][:avatar])
    redirect_to user_path(current_user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :avatar)
    current_user.avatar.attach(params[:avatar])
  end

  def check_authorization
    unless current_user.id == params[:id].to_i
      redirect_to root_url
    end
  end
end
