post '/questions/:id/answers' do

  @answer = Answer.new(body: params[:body], question_id: params[:id], responder_id: current_user.id)

  if @answer.save
    redirect "/questions/#{params[:id]}"
  else
    @question = Question.find_by(id: params[:id])
    @answers = @question.answers
    @errors = @answer.errors.full_messages
    p @errors
    erb :"questions/show"
  end
end

post '/questions/:q_id/answers/:a_id/vote' do
  @question = Question.find_by(id: params[:q_id])
  @answer = Answer.find_by(id: params[:a_id])
  @vote = Vote.create(votable_type: "Answer", votable_id: @answer.id, voter_id: current_user.id, vote_value: params[:vote].to_i)
  redirect "/questions/#{@question.id}"
end

