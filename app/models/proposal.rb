class Proposal < ActiveRecord::Base
  belongs_to :organization
  has_one :document
end
