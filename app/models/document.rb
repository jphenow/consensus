class Document < ActiveRecord::Base
  belongs_to :proposal
  has_many :sections
end
