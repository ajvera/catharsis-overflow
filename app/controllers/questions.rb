get '/questions' do
  @questions = Question.all
  erb :'/questions/index'
end

get '/questions/:id' do
  p params
  @question = Question.find_by(id: params[:id])
  p @question
  @answers = @question.answers
  erb :'/questions/show'
end

post '/questions' do
  redirect "/question/:id"
end


