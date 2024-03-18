class ApplicationMailer < ActionMailer::Base
  # This is for test/development
  # default from: "user@realdomain.com"
  # default from: "noreply@example.com"

  # This is for production
  default from: "thenicholashernandez@gmail.com"

  layout "mailer"
end
