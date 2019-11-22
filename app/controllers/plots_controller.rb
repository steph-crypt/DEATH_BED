class PlotsController < ApplicationController

  def index
    @plots = policy_scope(Plot).order(created_at: :desc)
  end

  def show
    @plot = Plot.find(params[:id])
    authorize @plot
    @user = @plot.user
    @markers = [{ lat: @plot.latitude, lng: @plot.longitude }]
  end

  def new
    @plot = Plot.new
    authorize @plot
  end

  def create
    @plot = Plot.new(plot_params)
    @plot.user_id = current_user.id
    authorize @plot
    if @plot.save
      redirect_to plot_path(@plot)
    else
      render :new
    end
  end

  def edit
    @plot = Plot.find(params[:id])
  end

  def update
    @plot = Plot.find(params[:id])
    @plot.update(params[:plot])
  end

  private

  def plot_params
    params.require(:plot).permit(:name, :cementary_name, :description, :location, :price, :photo)
  end
end
