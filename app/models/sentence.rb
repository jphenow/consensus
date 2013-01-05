class Sentence < ActiveRecord::Base
  belongs_to :paragraph
  has_many :comments, :as => :commentable
end
