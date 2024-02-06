class UserJob < ApplicationJob
  queue_as :default

  retry_on StandardError, attempts: 5

  def perform(user_id)
    user = User.find(user_id)
    sleep 5

    UserMailer.welcome(user).deliver
  end
end
