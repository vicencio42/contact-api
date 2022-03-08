Rails.application.routes.draw do

  get "/one_contact", controller: "contacts", action: "get_one_contact"

  get "/all_contacts", controller: "contacts", action: "get_all_contacts"


end
