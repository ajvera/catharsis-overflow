module CatharsisHelpers
	
	def current_user
		@user ||= User.find_by(id: session[:user_id])
	end

	def logged_in?
    	session[:user_id] != nil
  	end

  	def fully_authorized?
    	session[:user_id] == current_user.id
 	end

end

helpers CatharsisHelpers
