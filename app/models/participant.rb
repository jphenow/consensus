# == Schema Information
#
# Table name: participants
#
#  id              :integer          not null, primary key
#  organization_id :integer
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  username        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#
class Participant < ActiveRecord::Base
  belongs_to :organization
  has_many :votes
end
