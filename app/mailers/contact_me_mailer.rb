class ContactMeMailer < ApplicationMailer
  def send_to_admin
    @contact_me = params[:contact_me]
    mail(to: @contact_me.email, subject: 'You have a new letter')
  end
end
