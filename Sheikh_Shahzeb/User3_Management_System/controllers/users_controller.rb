class UsersController < ApplicationController
	def index
		@users =User.all
	end
	def new

	end
	def create
		User.create(first_name:params[:first_name],last_name:params[:last_name], email_address:params[:email_address],password:params[:password])
		redirect_to('/')
	end
	def show
		@user = User.find(params[:id])
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		User.update(params[:id], first_name:params[:first_name],last_name:params[:last_name], email_address:params[:email_address], password:params[:password])
		redirect_to '/'
	end
	def destroy
		User.destroy(params[:id])
		redirect_to('/')
	end
end
