class Review < ActiveRecord::Base
 belongs_to :event
 belongs_to :reviewer, polymorphic: true, foreign_key: 'reviewer_id', required: true
 belongs_to :reviewable, polymorphic: true

 validates_presence_of :content, :rating
end
