class AddUserReviewToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :user_review, references: :reviews
  end
end
