class ReviewsController < ApplicationController
  before_action :skip_authorization

  def new
    set_booking
    @plot = @booking.plot
    @review = Review.new
    authorize @review
  end

  def create
    set_booking
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.booking = @booking
    if @review.save!
      redirect_to user_path(current_user), notice: "Thanks for leaving a review of #{@booking.plot.name} from the Great Beyond!"
    else
      render :new
    end
    authorize @review
  end

  def destroy
    set_review
    set_booking
    set_plot
    @booking.review.destroy
    if @booking.review.destroy
      redirect_to user_path, notice: "Review was successfully Deleted"
      authorize @review
    end
  end

  private

  def set_plot
    @plot = Plot.find(params[:id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:comments, :satisfaction)
  end
end
