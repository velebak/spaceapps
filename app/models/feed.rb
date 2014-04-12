# == Schema Information
#
# Table name: feeds
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  feed_type   :string(255)
#  uri         :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Feed < ActiveRecord::Base
  
  belongs_to  :user
  has_many :observations
  
end
