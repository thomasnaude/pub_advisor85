class ReviewsController < ApplicationController
  before_action :set_pub, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = @pub.reviews.build(review_params)
    if @review.save
      redirect_to @pub
    else
      render :new
    end
  end


  private

  def set_pub
    @pub = Pub.find(params[:pub_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
