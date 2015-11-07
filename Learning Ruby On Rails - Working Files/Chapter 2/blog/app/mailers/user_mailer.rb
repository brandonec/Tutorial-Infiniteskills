class UserMailer < ActionMailer::Base
  default from: "infiniteskillsrailstraining@gmail.com"

  def commentposted_email(comment)
    @comment = comment
    mail(to: @comment.post.user.email, subject: "Comment Posted on #{@comment.post.title}")
  end
end
