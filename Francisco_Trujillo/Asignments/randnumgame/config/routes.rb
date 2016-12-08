Rails.application.routes.draw do
	root 'games#main'
	post 'games/check' => 'games#check'
	get 'games/clear' => 'games#clear'
end
