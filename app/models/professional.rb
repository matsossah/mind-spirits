class Professional < ActiveRecord::Base
  # after_create :send_welcome_email

  extend Enumerize
  geocoded_by :business_address
  after_validation :geocode, if: :business_address_changed?

  belongs_to :user

  has_many :events
  has_many :users, through: :events
  has_many :reviews, as: :reviewable

  enumerize :professional_role, in: [:barman, :brasseur, :sommelier, :cellar_man]

  validates_presence_of :business_address, :description, :phone_number, :professional_role
private

  def send_welcome_email
    UserMailer.welcome_pro(self).deliver_now
  end
end
