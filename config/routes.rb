Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "homes#index"
  
  get "signup", to: "registrations#new"
  post "sign-up", to: "registrations#create"

  get "login", to: "sessions#new"
  post "log-in", to: "sessions#create"
  delete "logout", to: "sessions#destroy" 

  resources :users, only: [:index, :show, :edit, :update]
end
