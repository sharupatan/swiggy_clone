Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :restaurants
  resources :foods

  get '*path' => 'not_found#index'
end
