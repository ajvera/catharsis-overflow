post '/questions/:id/answers' do

  @answer = Answer.new(body: params[:body], question_id: params[:id], responder_id: current_user.id)
   id = params[:id]
  if request.xhr?
    @question = Question.find_by(id: params[:id])
    if @answer.save
      erb :"answers/_answer", layout: false, locals: { answer: @answer}
    else
      @answers = @question.answers
      @errors = @answer.errors.full_messages
      erb :"questions/show"
    end
  else
    status 422
  end
end

post '/questions/:q_id/answers/:a_id/vote' do
  @question = Question.find_by(id: params[:q_id])
  @answer = Answer.find_by(id: params[:a_id])
  @vote = Vote.create(votable_type: "Answer", votable_id: @answer.id, voter_id: current_user.id, vote_value: params[:vote].to_i)
  redirect "/questions/#{@question.id}"
end

