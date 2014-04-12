class Observation < ActiveRecord::Base
  
  belongs_to  :feed
  acts_as_ordered_taggable
end
