class PlotsController < ApplicationController
  def index
    @plots = Plot.all
  end

  # private

  # def plot_params
  #   params.require(:user).permit(:name)
  # end

  def show
    @plot = Plot.find(params[:id])
  end
end
