Rails.application.routes.draw do

  get 'sobre', to: 'static_pages#sobre' 
  get 'contato', to: 'static_pages#contato'

  resources :clients do
    resources :withdrawals, only: [:new, :create]
    resources :deposits, only: [:new, :create]
    resources :transfers, only: [:new, :create]
    resources :statements, only: [:new, :create]
    resources :balances, only: [:index]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "clients#index"
end
