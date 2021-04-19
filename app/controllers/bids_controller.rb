class BidsController < ApplicationController
	def index
		@bids=Bid.where(project_id: params[:project_id])
		@user=User.find(params[:user_id])

	end

	def new
		@bid=Bid.new
		@user=User.find(params[:user_id])
		@project= Project.find(params[:project_id])

		
	end

	def create
		@user=User.find(params[:user_id])
		@project= Project.find(params[:project_id])
		@bid=@project.bids.create(bid_params)
		redirect_to user_project_bids_path(user_id: @user.id,project_id: @project.id)
	end

	def show
		@bid = Bid.find(params[:id])
	end
	

	private
	def bid_params
		params.require(:bid).permit(:price,:user_id,:project_id)
	end 
end
