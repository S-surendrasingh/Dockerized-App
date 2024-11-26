# frozen_string_literal: true

# ApplicationMailer is the base class for all mailers in the application.
# It provides default configurations for sending emails, such as the default 'from'
# address and the layout used for emails.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
