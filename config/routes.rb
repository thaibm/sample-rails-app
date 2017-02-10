Rails.application.routes.draw do


  root "static_pages#home"
  get "static_pages/home"
  get "/help", to: "static_pages#help", as: "helf"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "signup", to: "users#new"
  get "users/new"
  get "/login", to: "sessions#new"
  get "sessions/new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :users
  resources :account_activations, only: [:edit]

  scope "(:locale)", :locale => /en|vn/ do
    root "static_pages#home"
    get "static_pages/home"
  end

end
