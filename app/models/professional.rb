class Professional < ActiveRecord::Base
  extend Enumerize
  geocoded_by :business_address
  after_validation :geocode, if: :business_address_changed?

  belongs_to :user

  has_many :events
  has_many :users, through: :events

  enumerize :professional_role, in: [:barman, :brasseur, :sommelier, :cellar_man]

  validates_presence_of :business_address, :description, :phone_number, :professional_role
end
