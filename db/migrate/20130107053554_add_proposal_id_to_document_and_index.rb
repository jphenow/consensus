class AddProposalIdToDocumentAndIndex < ActiveRecord::Migration
  def change
    add_column :documents, :proposal_id, :integer
    add_index :documents, :proposal_id
  end
end
