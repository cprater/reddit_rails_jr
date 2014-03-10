class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.create(content: params[:comment][:content], user_id: session[:current_user], post_id: params[:post_id])
		redirect_to post_path(params[:post_id])
	end
end