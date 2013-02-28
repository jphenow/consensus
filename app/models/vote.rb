# == Schema Information
#
# Table name: votes
#
#  id             :integer          not null, primary key
#  participant_id :integer
#  proposal_id    :integer
#  value          :integer
#  created_at     :datetime
#  updated_at     :datetime
#
class Vote < ActiveRecord::Base
  belongs_to :proposal
  belongs_to :participant
end
