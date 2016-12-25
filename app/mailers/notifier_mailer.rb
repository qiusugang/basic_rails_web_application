class NotifierMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/users/login'
    mail(to: @user.email, subject: 'Welcome to My basic web Site')
  end
end
