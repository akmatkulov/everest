class ContactsController < ApplicationController

  def new
  end

  def create
    @contact = Contact.new(contact_paramas)
    @contact.save
  end

  private

  def contact_paramas
    params.require(:contact).permit(:email, :message)
  end

end
