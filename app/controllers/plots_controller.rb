class PlotsController < ApplicationController

  def show
    @plots = Plots.find(params[:id])
  end
end
