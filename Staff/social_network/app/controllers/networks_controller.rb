class NetworksController < ApplicationController
	def create
		Network.create(friend: User.find(params[:id]), user: current_user)
		redirect_to '/social_network'
	end

	def update
		network = Network.find(params[:id])
		network.update(accepted: true)
		Network.create(user: current_user, friend: network.user, accepted: true)
		redirect_to "/users/#{session[:user_id]}"
	end

	def destroy

	end
end
