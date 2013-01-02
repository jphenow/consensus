class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.text :abstract
      t.text :summary
      t.timestamps
    end
  end
end
