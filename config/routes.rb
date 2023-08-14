Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :restaurants
  resources :foods

  get '*path' => redirect('/')
end
