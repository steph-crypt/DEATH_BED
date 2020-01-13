class UsersController < ApplicationController

  def show
    set_user
    @bookings = Booking.where(user_id: @user)
    authorize @bookings
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
