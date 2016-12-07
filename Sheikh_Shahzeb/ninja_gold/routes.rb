Rails.application.routes.draw do
	get '/' => 'rpg#index'
	post '/farm' => 'rpg#farm'
	post '/cave' => 'rpg#cave'
	post '/house' => 'rpg#house'
	post '/casino' => 'rpg#casino'
	get '/reset' => 'rpg#reset'
end
