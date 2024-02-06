class UserMailer < ApplicationMailer

  def welcome(user)
    @user = user
    sleep 5

    mail to: user.email, subject: "Hello and Welcome!"
  end
end
