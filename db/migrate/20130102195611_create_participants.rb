class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :organization
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username #You'll thank me
      t.timestamps
    end
  end
end
