get '/sessions' do
	erb :'sessions/login'
end

post '/sessions' do
	user = User.find_by(email: params[:email])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id
		redirect "/users/#{current_user.id}"
	else
		erb :'sessions/login'
	end
end


delete '/sessions' do
	if request.xhr?
		session[:user_id] = nil
	else
		session.delete(:user_id)
		redirect '/'
	end
end
