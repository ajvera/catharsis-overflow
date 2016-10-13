module CatharsisHelpers

	def current_user
    if logged_in?
		  @user ||= User.find_by(id: session[:user_id])
    end
	end

	def logged_in?
    session[:user_id] != nil
  end

end

helpers CatharsisHelpers
