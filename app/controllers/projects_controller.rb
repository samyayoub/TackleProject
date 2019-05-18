class ProjectsController < ApplicationController

    def index
        @projects = Project.all
    end

    def new
        @project = Project.new
    end

    def create
        Project.create(project_params)
        redirect_to root_path
    end

    private

    def project_params
        params.require(:project).permit(:name, :description, :due_date)
    end

end
