# == Schema Information
#
# Table name: paragraphs
#
#  id         :integer          not null, primary key
#  section_id :integer
#  position   :integer
#  kind       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Paragraph do
  pending "add some examples to (or delete) #{__FILE__}"
end
