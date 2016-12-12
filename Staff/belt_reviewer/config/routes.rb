Rails.application.routes.draw do
	root 'sessions#new'
	# get '/' => 'sessions#new'
	resources :users, :sessions, :events, :comments
	post 'event_rosters/:id' => 'event_rosters#create'
	delete 'event_rosters/:id' => 'event_rosters#destroy'
end
