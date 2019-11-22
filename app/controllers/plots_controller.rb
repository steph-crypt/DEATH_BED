class PlotsController < ApplicationController

  def index
    @plots = policy_scope(Plot).order(created_at: :desc)
    if params[:query].present?
        @plots = Plot.where(name: params[:query])
      else
        @plots = Plot.all
    end
  end

  def show
    @plot = Plot.find(params[:id])
    authorize @plot
    @user = @plot.user
    @markers = [{ lat: @plot.latitude, lng: @plot.longitude }]
     if params[:query].present?
      sql_query = " \
        Plots.name @@ :query \
        OR Plots.description @@ :query \
        OR Plots.price @@ :query \
        OR Plots.location @@ :query \
        OR Plots.denomination @@ :query \
        OR Plots.location @@ :query \
        OR Plots.cementary_name @@ :query \
      "
      @Plots = Plot.where(sql_query, query: "%#{params[:query]}%")
    else
      @Plots = Plot.all
    end
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
