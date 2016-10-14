post '/questions/:id/comments' do
	if logged_in?
		@comment = Comment.new(user_id: current_user.id, commentable_id: params[:id],commentable_type: "Question", body: params[:comment] )
		if @comment.save
			redirect "/questions/#{params[:id]}"
		end
	else
		"You must be logged in to comment!"
	end
end

post '/questions/:id/answers/:id/comments' do
end