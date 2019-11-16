class EventsController < ApplicationController
    before_action :authenticate_user!

    def create
        @project = Project.find(params[:project_id])
        @project.events.create(event_params.merge(user: current_user))
        redirect_to project_path(@project)
    end

    private

    def event_params
        params.require(:event).permit(:name, :due_date)
    end

end
