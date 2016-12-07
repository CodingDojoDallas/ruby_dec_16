class UsersController < ApplicationController

	def index
		render json: User.all
	end

	def new
		render 'index'
	end

	def create
		@count = 0
		User.create(name:"rando #{@count}")
		@count+=1
		redirect_to '/users'
	end

	def show
		render json: User.find(1)
	end

	def edit 
		@user=User.first.name
		render 'new'
	end

	def total
		@count=0
		User.all.each{|data| @count+=1}
		render text: @count
	end
end
