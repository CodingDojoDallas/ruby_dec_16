class UsersController < ApplicationController
	def index
		@random = [*('A'..'Z')].sample(14).join
		if not session[:id]
			session[:id] = 0
		end
		@count = session[:id]+=1
		
	end
end

