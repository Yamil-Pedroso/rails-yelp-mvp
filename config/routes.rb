Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "restaurants#homepage"
  get 'reviews/new'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
