class UserMailer < ApplicationMailer
  default from: 'sandboxbcb71ac39bb14a9d858f69dc17925c79.mailgun.org'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.weekly_update.subject
  #
  def weekly_update(post)
    @post = post
    email1 = 'svavhal15@gmail.com'
    email2 = @post.email
    email3 = 'svavhal15@gmail.com'
    recipients = email1, email2, email3
    mail(to: recipients.join(','), subject: 'Weekly email from latest blog posts')
  end
end
