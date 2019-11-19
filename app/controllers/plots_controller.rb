class PlotsController < ApplicationController
  def index
    @plots = Plot.all
  end

  # private

  # def plot_params
  #   params.require(:user).permit(:name)
  # end
end
