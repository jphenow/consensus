# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  abstract   :text
#  summary    :text
#  created_at :datetime
#  updated_at :datetime
#

class Document < ActiveRecord::Base
  belongs_to :proposal
  has_many :sections
end
