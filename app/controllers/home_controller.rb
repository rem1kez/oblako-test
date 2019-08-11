class HomeController < ApplicationController
  def index
  end

  def contact_me
    contact_me = ContactMe.create(contact_me_params)
    ContactMeMailer.with(contact_me: contact_me).send_to_admin.deliver_later
    head :ok
  end

  private

  def contact_me_params
    params.require(:contact_me).permit(:name, :email, :phone, :message)
  end
end
