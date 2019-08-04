class ApplicationMailer < ActionMailer::Base.mail(from: "fromdomain.com", to: 'to@domain.com', subject: "Welcome to My Awesome Site", body: 'I  am the email body.').deliver_now
  layout 'mailer'
end
