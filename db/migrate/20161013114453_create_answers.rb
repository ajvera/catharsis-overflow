class CreateAnswers < ActiveRecord::Migration
  def change
  	create_table :answers do |t|
  		t.string		:body
  		t.integer		:responder_id
  		t.question_id	:question_id
  		t.boolean		:best_answer, {default: false}

  		t.timestamps(null: false)
  	end
  end
end
