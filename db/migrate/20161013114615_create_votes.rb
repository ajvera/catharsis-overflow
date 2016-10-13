class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :votable_id
      t.string  :votable_type
      t.integer :voter_id
      t.integer :vote_value, default: 0

      t.timestamps(null: false)
    end
  end
end
