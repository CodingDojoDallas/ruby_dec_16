class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new

	end
	def create
		User.create(
			name: params[:name],
			email: params[:email]
			)
		redirect_to '/'
	end
end
