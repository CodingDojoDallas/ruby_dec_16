class UsersController < ApplicationController
	def index
	end
	def show
		@users = render json: User.all
	end
	def new

	end
	def add
		User.create(
			name: params[:name])
		redirect_to '/users/show'
	end
	def create
		@name = (0...8).map { (65 + rand(26)).chr }.join
	end
	def show_id
		@user = User.find(params[:id])
	end
	def id_edit
		@user = User.find(params[:id])
	end
	def total
		@count = User.count
	end
end
