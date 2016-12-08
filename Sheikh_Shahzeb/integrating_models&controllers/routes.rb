Rails.application.routes.draw do
	get '/' => 'users#index'
	get 'users' => 'users#show'
	get 'users/new' => 'users#new'
	post 'users/add' => 'users#add'
	get 'users/create' => 'users#create'
	get 'users/total'	=> 'users#total'
	get 'users/:id/edit' => 'users#id_edit'
	get 'users/:id' => 'users#show_id'
end
