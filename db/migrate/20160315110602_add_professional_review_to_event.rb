class AddProfessionalReviewToEvent < ActiveRecord::Migration
  def change
    add_column :events, :professional_review_id, :integer
  end
end
