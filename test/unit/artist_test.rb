# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  fname      :string(255)
#  lname      :string(255)
#  age        :integer
#  gender     :string(255)
#  instrument :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
