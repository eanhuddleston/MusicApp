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

require 'test_helper'

class SingleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
