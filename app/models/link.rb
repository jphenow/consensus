class Link < ActiveRecord::Base

  belongs_to :proposal

  KIND = [:documentation, :spec]

end
