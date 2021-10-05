  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

  root to: "main#index"

  get "about", to: "about#index"

  get "sign-up", to: "registration#new"
  post "sign-up", to: "registration#create"

  get "sign-in", to: "session#new"
  post "sign-in", to: "session#create"

  get "password", to: "password#edit"
  patch "password", to: "password#update"

  # password reset request
  get "password/reset", to: "password_reset#new"
  post "password/reset", to: "password_reset#create"
  # password reset 
  get "password/reset/edit", to: "password_reset#edit"
  patch "password/reset/edit", to: "password_reset#update"

  delete "logout", to: "session#destroy"

  get "/auth/twitter/callback", to: "omniauth_callback#twitter"

  resources :twitter_accounts

end
