class Cocktail < ActiveRecord::Base
  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy

  validates_presence_of :name, :image
  validates_uniqueness_of :name, :image
end
