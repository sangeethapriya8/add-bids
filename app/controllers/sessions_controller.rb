class SessionsController < ApplicationController

	def create
		@user=User.find_by(username: params[:username],password: params[:password])


		if @user.present?
			session[:user_id]=@user.id
			redirect_to @user
		else
			message="Wrong username/password"
			redirect_to login_path,notice:message
		end
	end

	def show
		@user=User.find(params[:id])
	end
end