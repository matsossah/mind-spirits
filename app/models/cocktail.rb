class Cocktail < ActiveRecord::Base
  # mount_uploader :image, ImageUploader
  include PgSearch
  pg_search_scope :kinda_spelled_like,
                  :against => :name,
                  :using => :trigram

  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy
  has_many :reviews, as: :reviewable

  validates_presence_of :name, :image, :recipe_steps
end
