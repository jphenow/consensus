class Paragraph < ActiveRecord::Base
  belongs_to :section
  has_many :sentences
  has_many :comments, :as => :commentable

end
