class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:create, :show, :edit, :update, :destroy]

    def index
        @projects = Project.all.order("created_at DESC")
    end

    def new
        @project = current_user.projects.build
        @team = Team.where('id = ?', current_user.team_id)
    end

    def edit
        @teams = current_user.teams
    end

    def create
        # Project.create(project_params)
        # redirect_to root_path

        @project = current_user.projects.build(project_params)
        # if @project.valid?
            redirect_to root_path
        # else
        #     render :new, status: :unprocessable_entity
        # end
    end

    def show
        @project = Project.find(params[:id])
        @event = Event.new
    end

    private

    def set_project
        @project = Project.find(params[:id])
    end

    def project_params
        params.require(:project).permit(:name, :description, :due_date, :team_id)
    end

end
