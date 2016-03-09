class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :professional

  validates_presence_of :user, :professional, :address, :start_time, :end_time
end
