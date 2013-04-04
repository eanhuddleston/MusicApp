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

require 'test_helper'

class RecordingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
