class PlotsController < ApplicationController
  def index
    @plots = Plot.all
  end

  def show
    @plot = Plot.find(params[:id])
    @user = @plot.user
  end

  def new
    @plot = Plot.new
  end

  def create
    @plot = Plot.new(plot_params)
    @plot.user_id = current_user.id
    if @plot.save
      redirect_to plot_path(@plot)
    else
      render :new
    end
  end

  private

  def plot_params
    params.require(:plot).permit(:name, :cementary_name, :description, :address, :price, :photo)
  end
end
