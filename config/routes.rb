  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

  root to: "main#index"

  get "about", to: "about#index"

  get "sign-up", to: "registration#new"
  post "sign-up", to: "registration#create"

  get "sign-in", to: "session#new"
  post "sign-in", to: "session#create"

  delete "logout", to: "session#destroy"

end
