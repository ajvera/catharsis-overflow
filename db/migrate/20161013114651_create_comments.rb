class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.string :body, null: false
  		t.string :commentable_type
  		t.integer :commentable_id
  		t.integer :user_id, null: false

  		t.timestamps null:false
    end
  end
end
