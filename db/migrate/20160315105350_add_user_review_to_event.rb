class AddUserReviewToEvent < ActiveRecord::Migration
  def change
    rename_column :events, :review_id, :user_review_id
  end
end
