class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.references :section
      t.integer :position
      t.string :kind
      t.timestamps
    end
  end
end
