class Order < ActiveRecord::Base
  has_many :events
  belongs_to :user

  monetize :amount_cents
end
