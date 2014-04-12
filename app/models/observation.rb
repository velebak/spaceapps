class Observation < ActiveRecord::Base
  
  belongs_to  :feed
  acts_as_ordered_taggable
  has_many  :photo
  has_one   :location
end
