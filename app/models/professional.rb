class Professional < ActiveRecord::Base
  extend Enumerize

  belongs_to :user

  has_many :events
  has_many :users, through: :events

  enumerize :professional_role, in: [:barman, :brasseur, :sommelier, :cellar_man], multiple: true

  validates_presence_of :name
  validates_uniqueness_of :phone_number
end
