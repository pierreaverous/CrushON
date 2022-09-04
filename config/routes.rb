Rails.application.routes.draw do
  resources :produits
  get 'home/index'
  resources :vendeurs

  devise_for :users

  root 'home#index'

  get 'home/private'
  get 'vendeurs/:id/produits/new' => "produits#new_product", as:"new_product"


end

    


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
