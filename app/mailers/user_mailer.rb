class UserMailer < ApplicationMailer

  def welcome(user)
    @user = user

    mail to: user.email, subject: "Hello and Welcome!"
  end
end
