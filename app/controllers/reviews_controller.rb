class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @event = Event.find(params[:event_id])
    if current_user == User.find(@event.professional.user_id)
      reviewer = current_user.professional
      reviewable = @event.user
      @review = reviewable.reviews.build(review_params)
      @review.reviewer = reviewer
      @review.save
      @event.professional_review_id = @review
      @event.save
      # ReviewMailer.new_professional_review(reviewable).deliver_now
    else
      reviewer = current_user
      reviewable = @event.professional
      @review = reviewable.reviews.build(review_params)
      @review.reviewer = reviewer
      @review.save
      @event.user_review_id = @review.id
      @event.save
      # ReviewMailer.new_user_review(reviewable).deliver_now
    end

    if @review.save
      if current_user == @event.professional
        redirect_to user_professional_path(current_user)
      else
        redirect_to user_path(current_user)
      end
    else
      render user_path(@user)
    end
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
