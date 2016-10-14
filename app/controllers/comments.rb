post '/questions/:q_id/comments' do
	if logged_in?
		@comment = Comment.new(user_id: current_user.id, commentable_id: params[:id],commentable_type: "Question", body: params[:comment] )
		if @comment.save
			redirect "/questions/#{params[:id]}"
		end
	else
		"You must be logged in to comment!"
	end
end

post '/questions/:q_id/answers/:a_id/comments' do
	p params	
	if logged_in?
		@comment = Comment.new(user_id: current_user.id, commentable_id: params[:a_id],commentable_type: "Answer", body: params[:comment] )
		if @comment.save
			redirect "/questions/#{params[:q_id]}"
		end
	else
		"You must be logged in to comment!"
	end
end