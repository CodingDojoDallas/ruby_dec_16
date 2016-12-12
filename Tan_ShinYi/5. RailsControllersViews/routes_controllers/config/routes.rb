Rails.application.routes.draw do

  root :to => 'times#main'

  #root => 'controls#say'
  get '/hello' => 'controls#hello'
  get '/say/hello' => 'controls#sayhello'
  get '/say/hello/:name' => 'controls#sayhelloname'
  get '/times' => 'controls#times'
  get '/times/restart' => 'controls#restart'

  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  get '/users/create' => 'users#create'
  get '/users/total' => 'users#total'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
end
