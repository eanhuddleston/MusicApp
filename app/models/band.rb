# == Schema Information
#
# Table name: bands
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  date_formed :integer
#  genre       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Band < ActiveRecord::Base
  attr_accessible :date_formed, :genre, :name
  has_many :band_artists
  has_many :artists, :through => :band_artists
  has_many :recordings

end
