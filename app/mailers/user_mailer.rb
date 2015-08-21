class UserMailer < ApplicationMailer
  default from: "clement.matheron@gmail.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcom to Gimme $ Plz')
  end
end
