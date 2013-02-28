# == Schema Information
#
# Table name: proposals
#
#  id              :integer          not null, primary key
#  organization_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#
class Proposal < ActiveRecord::Base
  belongs_to :organization
  has_one :document
  has_many :votes
  has_many :links
end
