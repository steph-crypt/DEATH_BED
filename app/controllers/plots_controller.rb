class PlotsController < ApplicationController
  before_action :check_plot, only: :destroy
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @plots = policy_scope(Plot).order(created_at: :desc)
    if params[:query].present?
      sql_query = " \
        plots.name @@ :query \
        OR plots.description @@ :query \
        OR plots.location @@ :query \
        OR plots.denomination @@ :query \
        OR plots.cementary_name @@ :query \
      "
      @plots = Plot.where(sql_query, query: "%#{params[:query]}%")
    else
      @plots = Plot.all
    end

  end

  def show
    set_plot
    authorize @plot
    @user = @plot.user
    @booking = @plot.bookings
    @review = Review.joins(:booking).where("booking.plot_id = plot.id")
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
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    set_plot
    authorize @plot
  end

  def update
    set_plot
    if @plot.update(plot_params)
      redirect_to plot_path(@plot), notice: "Plot was successfully updated"
    else
      render :edit
    end
    authorize @plot
  end

  def destroy
    set_plot
    @plot.destroy
    redirect_to user_path(current_user), notice: "Plot was successfully removed"

    set_booking
    set_review
    if @plot.review.destroy
      redirect_to user_path, notice: "Review was successfully Deleted"
      authorize @plot
    end
  end

  private


 def set_review
    @review = Review.find(params[:id])
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def plot_params
    params.require(:plot).permit(:name, :cementary_name, :description, :location, :price, :photo)
  end

  def set_plot
    @plot = Plot.find(params[:id])
  end

  def check_plot
    set_plot
    if @plot.bookings
      redirect_to user_path(current_user), notice: "Plot cannot be removed, it has at least open reservation"
    end
  end
end
