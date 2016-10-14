post 'questions/:id' do
  @responder = current_user
  @answer = @responder.answer.create(params[:answer])

  if @answer.save
    redirect "questions/:id"
  end
  #add logic to display "answer cant be blank" error
end

get 'questions/:id' do
end
