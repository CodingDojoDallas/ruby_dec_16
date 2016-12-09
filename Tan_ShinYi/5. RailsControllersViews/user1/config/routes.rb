Rails.application.routes.draw do
  root :to => 'users#index'
  get '/users/new' => 'users#new'
  post '/users/new' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  post '/users/:id/edit' => 'users#update'
  delete '/users/:id' => 'users#delete'

end
