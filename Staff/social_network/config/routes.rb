Rails.application.routes.draw do
	resources :users, :sessions
	root 'sessions#new'
	get 'social_network' => 'users#index'
	post 'networks/:id' => 'networks#create'
	patch 'networks/:id' => 'networks#update'
	delete 'networks/:id' => 'networks#destroy'
end
