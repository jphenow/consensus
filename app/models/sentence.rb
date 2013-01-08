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

class Sentence < ActiveRecord::Base
  belongs_to :paragraph
  has_many :comments, :as => :commentable
end
