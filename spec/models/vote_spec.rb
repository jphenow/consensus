require 'spec_helper'

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
describe Vote do
  pending "add some examples to (or delete) #{__FILE__}"
end
