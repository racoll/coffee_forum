class ReviewsController < ApplicationController


  def index
    @reviews = Review.all
  end


  def show
    @review = Review.find(params[:id])
  end


  def new
  end

  # def create
  #   render plain: params[:review].inspect
  # end

def create
  @review = Review.new(review_params)

  @review.save
  redirect_to @review
end

private
  def review_params
    params.require(:review).permit(:name, :notes)
  end


end
