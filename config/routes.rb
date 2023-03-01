Rails.application.routes.draw do
  get 'portfolios/index'
  get 'projects/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :comments
  resources :sliders

  get 'images/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  # root "articles#index"
  root "images#index"

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

  resources :articles do
    resources :comments
  end
end