class ApplicationMailer < ActionMailer::Base
  default from: ENV["FROM_EMAIL"] || "from@exmaple.com"
  layout "mailer"
end
