class ProjectsController < ApplicationController
    before_action :authenticate_user!, only: [:create, :show,]

    def index
        @projects = Project.all
    end

    def new
        @project = Project.new
    end

    def create
        # Project.create(project_params)
        # redirect_to root_path

        @project = current_user.projects.create(project_params)
        # if @project.valid?
            redirect_to root_path
        # else
        #     render :new, status: :unprocessable_entity
        # end
    end

    def show
        @project = Project.find(params[:id])
    end

    private

    def project_params
        params.require(:project).permit(:name, :description, :due_date)
    end

end
