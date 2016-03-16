class RemoveEventIdFromReview < ActiveRecord::Migration
  def change
    remove_column :reviews, :event_id
  end
end
