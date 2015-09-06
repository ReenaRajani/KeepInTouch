class EventMailer < ApplicationMailer
  default from: "reena_hrajani@yahoo.co.in"

  def invite_employee(leaver, event, inviter, url)
    @leaver = leaver
    @event = event
    @current_user = inviter
    @url = url
    mail(to: @leaver.emp_email, subject: "You are Invited ")
  end
end
