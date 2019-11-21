class PlotsController < ApplicationController
  def index
    @plots = policy_scope(Plot).order(created_at: :desc)
  end

  def show
    @plot = Plot.find(params[:id])
    @user = @plot.user
    raise
    authorize @plot
  end

  def new
    @plot = Plot.new
  end

  def create
    authorize @plot
    @plot = Plot.new(plot_params)
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
  # private

  def plot_params
    params.require(:user).permit(:name)
  end
end
