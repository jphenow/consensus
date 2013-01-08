# == Schema Information
#
# Table name: sentences
#
#  id           :integer          not null, primary key
#  paragraph_id :integer
#  content      :text
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe Sentence do
  pending "add some examples to (or delete) #{__FILE__}"
end
