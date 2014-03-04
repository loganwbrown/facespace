class UserMailer < ActionMailer::Base
  layout 'mailer'
  default from: "no-reply@facespace.com"


  def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to FaceSpace' )
  end

  def anniversary(user) 
    @user = user
    mail(to: @user.email, subject: 'Happy FaceSpace Anniversary')
  end

  def newsletter(user)
    @user = user
    mail(to: @user.email, subject: 'My newsletter')
  end
  
end
