get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:users])

  if @user.save
    session[:user_id] = @user.id
    redirect '/questions'
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/:user_id' do
  @user = User.find(params[:user_id])
	if logged_in? && fully_authorized?
		erb :'/users/show'
	else
		@error = "No soup for you! Must login to view your profile page."
		redirect '/'
	end
end
