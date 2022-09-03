Rails.application.routes.draw do
  get 'home/index'
  resources :vendeurs

  devise_for :users

  root 'home#index'

  get 'home/private'


end

    


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
