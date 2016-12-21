Rails.application.routes.draw do
	get '/' =>'users#index'
	post '/users' =>'users#create'
	post '/sessions' =>'sessions#create'
	post '/shoes' => 'shoes#create'
	get '/dashboard' =>'shoes#index'
	get '/shoes' => 'shoes#show'
	delete '/sessions/:id' =>'sessions#destroy'
	patch '/shoes/:id' =>'shoes#update'
	delete '/shoes/:id' => 'shoes#destroy'
end
