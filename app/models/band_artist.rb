class BandArtist < ActiveRecord::Base
  belongs_to :artist
  belongs_to :band
  # attr_accessible :title, :body
end
