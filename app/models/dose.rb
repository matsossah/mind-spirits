class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates_presence_of :description, :cocktail, :ingredient
  validates_uniqueness_of :ingredient_id, :scope => [:cocktail_id]
end
