class Proposal < ActiveRecord::Base
  belongs_to :organization
  has_one :document
  has_many :votes
  has_many :links
end
