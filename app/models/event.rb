class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :barman

  validates_presence_of :user, :barman, :address, :start_time, :end_time
end
