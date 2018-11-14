Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :cats
  
  # get "/cats/", to: "cats#index"
  # get "/cats/:id", to: "cats#show"
  # post "/cats/", to: "cats#create"
  # get "/cats/new", to: "cats#new" as: 'cats_url'
  
end
