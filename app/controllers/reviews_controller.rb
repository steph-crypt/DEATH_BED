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

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:comments, :satisfaction)
  end
end
