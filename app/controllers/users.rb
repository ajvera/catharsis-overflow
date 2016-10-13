get '/users/new' do
  erb :'users/new'
end

post '/users' do
  user = User.new(username: params[:username], email: params[:email])

  user.password = params[:password]
  #user.hashed_password = BCrypt::Password.create(params[:password]) **Line 11 is correct way to hash password**
  user.save!

  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    @errors = user.errors.full_messages
    erb :'/users/new'
  end
end