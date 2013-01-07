class AddsMissingIndexes < ActiveRecord::Migration
  def change
    add_index :comments, :commentable_id
    add_index :comments, :commentable_type
    add_index :comments, [:commentable_type, :commentable_type], :unique => true
    add_column :links, :proposal_id, :integer
    add_index :links, :proposal_id
    add_index :paragraphs, :section_id
    add_index :paragraphs, :position
    add_index :participants, :organization_id
    add_index :proposals, :organization_id
    add_column :sections, :proposal_id, :integer
    add_index :sections, :proposal_id
    add_column :sections, :position, :integer
    add_index :sections, :position
    add_index :sentences, :paragraph_id
    add_column :sentences, :position, :integer
    add_index :sentences, :position
    add_index :votes, :proposal_id
    add_index :votes, :participant_id
    add_index :votes, :value
  end
end
