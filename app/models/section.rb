class Section < ActiveRecord::Base
  belongs_to :document
  has_many :paragraphs
  has_many :comments, :as => :commentable
end
