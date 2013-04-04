# == Schema Information
#
# Table name: singles
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  recording_id :integer
#

class Single < ActiveRecord::Base
  attr_accessible :title
  belongs_to :recording
end
