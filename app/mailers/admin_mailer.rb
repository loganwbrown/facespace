class AdminMailer < ActionMailer::Base
  default from: "contact@facespace.com",
          to: "me@facespace.com"

  def contact_form(contact)
    @contact = contact
    mail(subject: 'New Contact Form Submission')
  end
end
