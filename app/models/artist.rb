class Artist < ActiveRecord::Base
  attr_accessible :age, :fname, :gender, :instrument, :lname
  has_many :band_artists
  has_many :bands, :through => :band_artists
end
