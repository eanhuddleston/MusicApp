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

class Artist < ActiveRecord::Base
  attr_accessible :age, :fname, :gender, :instrument, :lname # REV Only one instrument?
  attr_accessible :bands_attributes

  has_many :band_artists
  has_many :bands, :through => :band_artists
  accepts_nested_attributes_for :bands
end
