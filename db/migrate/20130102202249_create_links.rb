class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :kind, :default => :documentation
      t.string :url
      t.timestamps
    end
  end
end
