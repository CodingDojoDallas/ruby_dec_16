Rails.application.routes.draw do
	get '/' => 'users#index'
	post 'users' => 'users#create'
	get 'dashboard' => 'users#dashboard'
end
