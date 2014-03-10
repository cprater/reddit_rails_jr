class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_username(params[:session][:username])

		if user.authenticate(params[:session][:password])
			session[:current_user] = user.id
			redirect_to posts_path
		else
			render :new
		end
	end

	def destroy
		session[:current_user] = nil
		redirect_to posts_path
	end

end