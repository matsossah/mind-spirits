class Review < ActiveRecord::Base
 belongs_to :reviewer, polymorphic: true, foreign_key: 'reviewer_id', required: true
 belongs_to :reviewable, polymorphic: true
 has_one :event

 validates_presence_of :content, :rating
end
