# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  kind       :string(255)      default("documentation")
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Link do
  pending "add some examples to (or delete) #{__FILE__}"
end
