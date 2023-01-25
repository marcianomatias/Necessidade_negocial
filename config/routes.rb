Rails.application.routes.draw do

  get 'sobre', to: 'static_pages#sobre' 
  get 'contato', to: 'static_pages#contato'

  resources :conta_correntes
  resources :clientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "welcome#index"
end
