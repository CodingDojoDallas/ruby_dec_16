class NetworksController < ApplicationController
	def index
		@user = User.find(session[:user_id])
		@network = User.where("user_id = ? and connect = ?", @user.id, true)
		# @associates = Network.where()
	end
	def show
		@users = User.all
	end
end
