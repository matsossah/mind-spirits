class AddProfessionalReviewToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :professional_review, references: :reviews
  end
end
