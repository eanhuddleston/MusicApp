class Single < ActiveRecord::Base
  attr_accessible :title
  belongs_to :recording
end
