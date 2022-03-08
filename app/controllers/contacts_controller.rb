class ContactsController < ApplicationController

  def get_one_contact
    contact = Contact.first
    render json: contact.as_json
  end

  def get_all_contacts
    contacts = Contact.all
    render json: contacts.as_json
  end


end
