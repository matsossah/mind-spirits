class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    reviewer = current_user
    event = Event.find(params[:event_id])
    if current_user == event.professional
      reviewable = event.user
    else
      reviewable = event.professional
    end

    @review = reviewable.reviews.build(review_params)
    @review.reviewer = reviewer
    @review.event_id = event.id
    @review.save
    event.review_id = @review.id
    event.save

    if @review.save
      if current_user == event.professional
        redirect_to user_professional_path(current_user)
      else
        redirect_to user_path(current_user)
      end
    else
      render user_path(@user)
    end ReviewMailer.new_professional_review(user).deliver_now
  end

  def edit
    @review = Review.new
  end

  def update
    @user = User.find(params[current_user.id])
    @review = Review.new(review_params)
    @review.reviewer_id = @user
    if @review.save
      redirect_to user_path(@user)
    else
      render user_path(@user)
    end
  end

  def destroy
    @user = User.find(params[:reviewer_id])
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to user_path(@user)
  end

private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
