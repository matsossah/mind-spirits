class AddReviewIdToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :review, index: true, foreign_key: true
  end
end
