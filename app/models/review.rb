class Review < ActiveRecord::Base
 has_one :event
 belongs_to :reviewer, polymorphic: true, foreign_key: 'reviewer_id', required: true
 belongs_to :reviewable, polymorphic: true

 validates_presence_of :content, :rating
end
