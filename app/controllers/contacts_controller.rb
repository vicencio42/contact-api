class ContactsController < ApplicationController

  def index
    contact = Contact.all
    render json: contact
  end

  def show
    contacts = Contact.find_by(id: params["id"])
    render json: contacts
  end

  def create
    contact = Contact.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"]
    )
    if contact.save #happy path
      render json: contact
    else #sad path
      render json: {error_message: contact.errors.full_messages}, status: 422
    end
  end

  def update
    contact_id = params["id"]
    contact = Contact.find(product_id)

    contact.first_name = params["first_name"] || contact.first_name
    contact.last_name = params["last_name"] || contact.last_name
    contact.email = params["email"] || contact.email
    contact.phone_number = params["phone_number"] || contact.phone_number

    if contact.save #happy path
      render json: contact
    else #sad path
      render json: {error_message: contact.errors.full_messages}, status: 422
    end
  end

    def destroy
      contact_id = params["id"]
      contact = Contact.find(contact_id)
      contact.destroy
      render json: {message: "Contact has been destroyed!!"}
    end


end
