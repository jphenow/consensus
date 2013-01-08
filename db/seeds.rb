require 'factory_girl'
require 'ffaker'
FactoryGirl.find_definitions

def random(array, number=1)
  array.shuffle[0..(number - 1)].first
end

def rand_in_range(from, to)
  rand * (to - from) + from
end

def rand_time(from, to)
  Time.at(rand_in_range(from.to_f, to.to_f))
end

orgs = []
participants = []
proposals = []
documents = []
sections = []
paragraphs = []
sentences = []

ActiveRecord::Base.connection.execute("TRUNCATE organizations")
10.times do
  orgs << FactoryGirl.create(:organization ,
    :name => Faker::Company.name + " group"
     )
end

ActiveRecord::Base.connection.execute("TRUNCATE participants")
ActiveRecord::Base.connection.execute("TRUNCATE proposals")
for org in orgs
  5.times do
    participants << FactoryGirl.create(:participant, :organization => org)
    proposals << FactoryGirl.create(:proposal, :organization => org)
  end
end

ActiveRecord::Base.connection.execute("TRUNCATE documents")
for proposal in proposals
  documents << FactoryGirl.create(:document, :proposal => proposal)
end

ActiveRecord::Base.connection.execute("TRUNCATE sections")
ActiveRecord::Base.connection.execute("TRUNCATE paragraphs")
ActiveRecord::Base.connection.execute("TRUNCATE sentences")
for document in documents
  section = FactoryGirl.create(:section, :document => document)
  sections << section
  5.times do
    paragraph = FactoryGirl.create(:paragraph, :section => section, :kind => random(['ul',
    'li']))
    paragraphs << paragraph
    random([*3..10]).times do
      sentences << FactoryGirl.create(:sentence, :paragraph => paragraph)
    end
  end
end

ActiveRecord::Base.connection.execute("TRUNCATE comments")
for commentable in [sections, paragraphs, sentences].flatten
  random([*0..2]).times do
    FactoryGirl.create(:comment, :commentable => commentable)
  end
end

ActiveRecord::Base.connection.execute("TRUNCATE votes")
for participant in participants
  for proposal in proposals
    FactoryGirl.create(:vote, :proposal => proposal, :participant => participant)
  end
end


