# == Schema Information
#
# Table name: observations
#
#  id              :integer          not null, primary key
#  seen            :date
#  right_asecnsion :string(255)
#  declination     :string(255)
#  magnitude       :string(255)
#  catalog_number  :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Observation < ActiveRecord::Base
  
  belongs_to  :feed
  acts_as_ordered_taggable
  has_many  :photos
  has_one   :location
end
