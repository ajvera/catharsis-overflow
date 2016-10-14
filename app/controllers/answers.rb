post '/questions/:id/answers' do
  p params
  @answer = Answer.create(body: params[:body], question_id: params[:id], responder_id: current_user.id)

  if @answer.save
    redirect "/questions/#{params[:id]}"
  end
  #add logic to display "answer cant be blank" error
end

