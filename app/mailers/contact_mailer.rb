class ContactMailer < ApplicationMailer

  default from: "from@example.com"

  def contact_email(user_name, user_email, message)
    puts user_name
    puts user_email
    puts message
    @message = message
    @user_email = user_email
    @user_name = user_name
    mail(to: "testiemactesterson@gmail.com", subject: 'Contact from TB Site')
  end

end
