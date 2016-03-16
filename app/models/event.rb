class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :professional
  belongs_to :professional_review, class_name: "Review"
  belongs_to :user_review, class_name: "Review"


  # has_many :reviews, dependent: :destroy

  validates_presence_of :user, :professional, :address, :start_time, :end_time
end
