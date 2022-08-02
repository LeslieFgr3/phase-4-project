Rails.application.routes.draw do
  
  resources :users
  resources :emojis
  resources :tasks
  resources :schedulers
  
  get "/login", to: "session#create"

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
