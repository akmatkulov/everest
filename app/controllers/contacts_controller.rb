class ContactsController < ApplicationController

  def new
  end

  def create
    @contact = Contact.new(contact_paramas)
    if @contact.valid?
      @contact.save
    else
      render action: 'new'
    end 
  end

  private

  def contact_paramas
    params.require(:contact).permit(:email, :message)
  end

end
