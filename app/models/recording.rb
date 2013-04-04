# == Schema Information
#
# Table name: recordings
#
#  id         :integer          not null, primary key
#  band_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_name :string(255)
#

class Recording < ActiveRecord::Base
  belongs_to :band
  has_many :singles
  # attr_accessible :title, :body
end
