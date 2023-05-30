Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  resources :cars do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:edit, :update, :show]
end
