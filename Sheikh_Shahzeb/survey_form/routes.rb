Rails.application.routes.draw do
	get '/' => 'users#index'
	post 'submit' => 'users#submit'
end
