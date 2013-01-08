# == Schema Information
#
# Table name: sections
#
#  id          :integer          not null, primary key
#  document_id :integer
#  title       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Section < ActiveRecord::Base
  belongs_to :document
  has_many :paragraphs
  has_many :comments, :as => :commentable
end
