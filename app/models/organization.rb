class Organization < ActiveRecord::Base

  has_many :participants
  has_many :proposals

end
