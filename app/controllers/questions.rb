get '/questions' do
  erb :'/questions/index'
end

get '/questions/:id' do
  erb :'/questions/show'
end

post '/questions' do
  redirect "/question/:id"
end
