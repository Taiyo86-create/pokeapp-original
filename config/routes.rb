Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  root to: "users#index"
  resources :rooms
  resources :users
  resources :matches
end
