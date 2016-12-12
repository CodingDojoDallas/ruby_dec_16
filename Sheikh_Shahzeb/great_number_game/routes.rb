Rails.application.routes.draw do
	get '/' => 'users#index'
	get '/submit' => 'users#submit'
	get '/clear' => 'users#clear'
end
