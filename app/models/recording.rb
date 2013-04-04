class Recording < ActiveRecord::Base
  belongs_to :band
  has_many :singles
  # attr_accessible :title, :body
end
