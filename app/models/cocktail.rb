class Cocktail < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy
  has_many :reviews, as: :reviewable

  validates_presence_of :name, :image, :recipe_steps
end

