Rails.application.routes.draw do

  get "/contacts" => "contacts#get_one_contact"

  get "/all_contacts" => "contacts#get_all_contacts"


end
