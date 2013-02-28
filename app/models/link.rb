# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  kind       :string(255)      default("documentation")
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#
class Link < ActiveRecord::Base

  belongs_to :proposal

  KIND = [:documentation, :spec]

end
