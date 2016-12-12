class UsersController < ApplicationController
	def index

	end
	def submit
		@name = params[:name]
		@location = params[:dojo_location]
		@language = params[:favorite_language]
		@comments = params[:comments]
	end
end


