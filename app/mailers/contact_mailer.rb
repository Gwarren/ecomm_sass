class ContactMailer < ActiveMailer::Base 
  default to: 'anomalousdevs@gmail.com'
  def contact_email(name, email, bosdy)
    @name = name 
    @email = email 
    @body = body
    
    mail(from: email, subject: 'Contact Form Message')
  end
end