# frozen_string_literal: true

# ApplicationMailer is a class that can be used to send emails
class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"
end
