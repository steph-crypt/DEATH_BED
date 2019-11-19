class PlotsController < ApplicationController

  def show
    @plot = Plot.find(params[:id])
  end
end
