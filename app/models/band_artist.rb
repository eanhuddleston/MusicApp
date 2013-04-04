# == Schema Information
#
# Table name: band_artists
#
#  id         :integer          not null, primary key
#  artist_id  :integer
#  band_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BandArtist < ActiveRecord::Base
  belongs_to :artist
  belongs_to :band
  # attr_accessible :title, :body
end
