get '/questions' do
  @questions = Question.all
  erb :'/questions/index'
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

post '/questions/:id/votes' do
  @question = Question.find_by(id: params[:id])
  p params
  if request.xhr?
    @vote = Vote.create(votable_type: "Question", votable_id: @question.id, voter_id: current_user.id, vote_value: params[:vote])
    @question.votes.pluck(:vote_value).sum.to_s
  else
    @vote = Vote.create(votable_type: "Question", votable_id: @question.id, voter_id: current_user.id, vote_value: params[:vote].to_i)
    redirect "/questions/#{@question.id}"
  end

end

get '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  @answers = @question.answers
  erb :'/questions/show'
end

