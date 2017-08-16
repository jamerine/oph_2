class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end


  def new
    @new_review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to reviews_path, notice: "Customer Review Created successfully!"
    else
      redirect_to reviews_path, alert: "There was an error creating a review. Please try again!"
    end
  end


  private

  def review_params
    params.require(:review).permit(:first_name, :last_name, :body, :active, :review_url)
  end
end
