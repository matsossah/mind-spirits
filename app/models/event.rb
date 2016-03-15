class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :professional

  has_many :reviews, dependent: :destroy

  validates_presence_of :user, :professional, :address, :start_time, :end_time
end
