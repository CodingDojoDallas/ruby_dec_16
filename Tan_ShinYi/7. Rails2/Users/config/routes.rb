Rails.application.routes.draw do

  get 'secrets/index'

  get '/sessions/new' => 'sessions#new'
  post '/sessions/log_in' => 'sessions#log_in'
  delete '/sessions' => 'sessions#destroy'

  post '/users' => 'users#create'
  get '/users/new' => 'users#new'
  get '/users/:id' => 'users#show'
  post '/users/:id' => 'users#update'
  get '/users/:id/edit' => 'users#edit'
  delete '/users/:id' => 'users#destroy'

  get '/secrets' => 'secrets#index'
  post '/secrets' => 'secrets#create'
  delete '/secrets/:id' => 'secrets#destroy'

  post '/likes' => 'likes#create'
  delete '/likes' => 'likes#destroy'
end
