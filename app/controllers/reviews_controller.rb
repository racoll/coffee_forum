class ReviewsController < ApplicationController

  def new
  end

  def create
    render plain: params[:review].inspect
  end


end
