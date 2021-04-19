class UsersController < ApplicationController
	def index
		@users=User.all
	end

	def show
		@user= User.find(params[:id])
	end
	
	def new
		@user=User.new
	end

	def create
		@user=User.new(user_params)
		if @user.save
			session[:user_id]=@user.id
			message="Successfully Registered"
			redirect_to users_path,notice: message
		else
			render :new
		end
	end

	

	private

	def user_params
		params.require(:user).permit(:fullname,:role,:username,:password)
	end
end


