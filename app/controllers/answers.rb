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

