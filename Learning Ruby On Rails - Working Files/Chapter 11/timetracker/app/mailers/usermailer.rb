class Usermailer < ActionMailer::Base
  default from: "infiniteskillsrailstraining@gmail.com"

  def workcreated_email(work)
    @work = work
    mail(to: work.project.user.email, subject: "Work Item Posted")
  end

  def projectupdated_email(project)
    @project = project
    mail(to: project.user.email, subject: "Project Updated")
  end
  
end
