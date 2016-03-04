class Cocktail < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy

  validates_presence_of :name, :image
  validates_uniqueness_of :name
end
