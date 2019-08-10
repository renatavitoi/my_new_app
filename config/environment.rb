# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

 #sendgrid email server config added to ActionMailer method for usage on Heroku

 ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: '587',
  authentication: :plain,
  user_name: ENV['SENDGRID_USERNAME'],
  password: ENV['SENDGRID_PASSWORD'],
  domain: 'https://santovaralstore.herokuapp.com',
  enable_starttls_auto: true
}
