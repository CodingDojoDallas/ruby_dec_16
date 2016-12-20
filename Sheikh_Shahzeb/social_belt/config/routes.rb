Rails.application.routes.draw do
	get '/' =>'users#index'
	post '/users' =>'users#create'
	post '/sessions' =>'sessions#create'
	get '/dashboard' =>'networks#index'
	get '/users' =>'networks#show'
	patch 'networks/:id' =>'networks#update'
	post '/networks/:id' =>'networks#create'
	delete '/networks/:id' =>'networks#destroy'
	delete '/sessions/:id' =>'sessions#destroy'
end
