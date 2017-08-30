class CommentsController < ApplicationController
	before_action :get_user, only: [:create,:new]
	def new
	@comment = Comment.new
	end
	
	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			flash[:notice] = "comment saved successfully"
			redirect_to notification_path(params[:notification_id])
		else
			flash[:notice] = "comment not saved"
			redirect_to notification_path(params[:notification_id])
		end
		
	end
	private
	def comment_params
		user = {user_id:@user.id}
		notification = {notification_id:params[:notiffication_id]}
		params.require(:comment).permit(:description, :notification_id).merge(user).merge(notification)

	end
	def get_user
		@user = current_user
		@notification = Notification.find(params[:notification_id])
	end
end
