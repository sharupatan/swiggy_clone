Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :restaurants
  resources :foods

  get 'profile' => 'profiles#index'
  get '*path' => 'not_found#index'
end
