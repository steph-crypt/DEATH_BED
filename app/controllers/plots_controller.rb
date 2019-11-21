class PlotsController < ApplicationController
  def index
    @plots = Plot.all
  end

  def show
    @plot = Plot.geocoded.find(params[:id])
    # @user = @plot.user
    @markers = [{ lat: @plot.latitude, lng: @plot.longitude }]

  end
  # private

  # def plot_params
  #   params.require(:user).permit(:name)
  # end
end
