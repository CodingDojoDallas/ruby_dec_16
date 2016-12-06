Rails.application.routes.draw do
  root 'user#index'
  resources :users
  get 'users/new' => 'users/new'
  get 'users/total' => 'users#total'
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
