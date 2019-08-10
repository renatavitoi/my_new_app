class UserMailer < ApplicationMailer
  default from: "santovaralstore@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'santovaralstore@gmail.com',
         subject: "Rails Web App message from #{name}")
  end
end
