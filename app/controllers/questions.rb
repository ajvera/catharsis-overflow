get '/questions' do
  @questions = Question.all
  erb :'/questions/index'
end

get '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  @answers = @question.answers
  erb :'/questions/show'
end

post '/questions' do
  @question = Question.new(asker_id: current_user.id, title: params[:title], body: params[:body])
  if @question.save
    redirect "/questions/#{@question.id}"
  else
    @errors = @question.errors.full_messages
    erb :'questions'
  end
end

