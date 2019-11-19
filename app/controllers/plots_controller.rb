class PlotsController < ApplicationController

  def show
    @plot = Plot.find(params[:id])
    @user = @plot.user
  end
end
