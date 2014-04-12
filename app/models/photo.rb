# == Schema Information
#
# Table name: photos
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  path           :string(255)
#  description    :text
#  width          :integer
#  height         :integer
#  created_at     :datetime
#  updated_at     :datetime
#  observation_id :integer
#

class Photo < ActiveRecord::Base

  belongs_to  :observation

end
