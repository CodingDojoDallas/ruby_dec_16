Rails.application.routes.draw do
	get '/' => 'users#index'
	post '/users' =>'users#create'
	get '/dashboard' => 'networks#index'
	post '/sessions' => 'sessions#create'
	get '/users/:id' => 'networks#show'
	delete 'sessions/:id' => 'sessions#destroy'
	get '/users/:id/edit' => 'users#edit'
	patch '/users/:id' => 'users#update'
end
