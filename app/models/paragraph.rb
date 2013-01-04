class Paragraph < ActiveRecord::Base
  belongs_to :section
  has_many :sentences
end
