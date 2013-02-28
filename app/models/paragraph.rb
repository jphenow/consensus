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

class Paragraph < ActiveRecord::Base
  belongs_to :section
  has_many :sentences
  has_many :comments, :as => :commentable
end
