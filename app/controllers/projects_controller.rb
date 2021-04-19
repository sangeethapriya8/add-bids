class ProjectsController < ApplicationController
	def index
		@projects=Project.all
		@user=User.find(params[:user_id])

	end
	
	def new
	 	@project=Project.new
	 	@user=User.find(params[:user_id])


	end

	def create
		@user=User.find(params[:user_id])
		@project=@user.projects.create(project_params)
		@project.save
		redirect_to user_projects_path(@user)
	end

	def show
		@project= Project.find(params[:id])
	end

	private
		def project_params
			params.require(:project).permit(:name,:skill,:state,:city,:user_id)
		end	
end
