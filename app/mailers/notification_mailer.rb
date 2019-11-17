class NotificationMailer < ApplicationMailer

    default from: "no-reply@tackleproject.com"

    def event_due(event)
        @project = event.project
        @project_owner = @project.user

        mail(to: @prject_owner.email,
            subject: "You have an event that is coming up for #{@project.name}")
    end

end
