class AddRatingToProfessional < ActiveRecord::Migration
  def change
    add_column :professionals, :rating, :float
  end
end
