class UserJob < ApplicationJob
  queue_as :default

  sidekiq_options retry: 5

  def perform(user_id)
    user = User.find(user_id)
    UserMailer.welcome(user).deliver
  end
end
