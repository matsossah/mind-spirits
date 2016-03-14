class AddReviewerToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :reviewer_id, :integer
    add_column :reviews, :reviewer_type, :string
  end
end
