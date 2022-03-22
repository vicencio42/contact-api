Rails.application.routes.draw do
#contacts
  get "/contacts" => "contacts#index"
  post "/contacts/:id" => "contacts#create"
  get "/contacts/:id" => "contacts#show"
  patch "/contacts/:id" => "contacts#update"
  delete "contacts/:id" => "contacts#destroy"
#users
  post "/users" => "users#create"

end
