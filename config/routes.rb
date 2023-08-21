Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :restaurants
  resources :foods
  resources :carts
  resources :payments

  get 'add_cart/:id' => 'carts#add_to_cart'

  get 'q_increase/:id' => 'carts#q_increase'
  get 'q_decrease/:id' => 'carts#q_decrease'

  get 'profile' => 'profiles#index'
  get '*path' => 'not_found#index'
end
