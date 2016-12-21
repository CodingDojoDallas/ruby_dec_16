class NetworksController < ApplicationController
	def index
		puts session[:user_id]
		@user = User.find(session[:user_id])
		@network = Network.where(user:@user, connect:false)
		@y_network = Network.where(user:@user, connect:true)
	end
	def show
		@user = User.find(session[:user_id])
		associate = Network.where(user:User.find(session[:user_id])).pluck('associate_id')
		associate += Network.where(associate:User.find(session[:user_id])).pluck('user')
		associate.push(session[:user_id])
		@network = User.where.not(id:associate)
	end
	def create
		@user = User.find(session[:user_id])
		network = Network.create(user:@user, connect:false, associate:User.find(params[:id]))
		redirect_to '/users'
	end
	def update
		Network.find(params[:id]).update(connect:true)
		redirect_to '/dashboard'
	end
	def destroy
		Network.find(params[:id]).destroy
		redirect_to '/dashboard'
	end
end
