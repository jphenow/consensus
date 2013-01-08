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

require 'spec_helper'

describe Participant do
  pending "add some examples to (or delete) #{__FILE__}"
end
