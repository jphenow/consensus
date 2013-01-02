class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.references :paragraph
      t.text :content
      t.timestamps
    end
  end
end
