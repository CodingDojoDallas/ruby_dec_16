Rails.application.routes.draw do
  resources :users, :secrets
  resources :sessions, only: [:new, :destroy, :create]
  resources :likes, only: [:create, :destroy]
  root 'sessions#new'



end
