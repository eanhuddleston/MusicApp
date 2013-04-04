class Band < ActiveRecord::Base
  attr_accessible :date_formed, :genre, :name
  has_many :band_artists
  has_many :artists, :through => :band_artists
  has_many :recordings

end
