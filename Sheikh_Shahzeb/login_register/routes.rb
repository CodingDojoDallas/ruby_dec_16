Rails.application.routes.draw do
	resources :users, :sessions
	root 'users#new'
	get '/dashboard' => 'users#logged_in'
end
