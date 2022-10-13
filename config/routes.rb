Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "homes#index"
  get "signup", to: "registrations#new"
  post "sign-up", to: "registrations#create"

  resources :users, only: [:show, :edit, :update]

end
