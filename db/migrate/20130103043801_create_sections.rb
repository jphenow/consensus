class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :document
      t.string :title
      t.integer :position
      t.timestamps
    end
  end
end
