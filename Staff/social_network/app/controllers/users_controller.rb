class UsersController < ApplicationController
	def index
		friends = Network.where(user: current_user).pluck('friend_id')
		friends += Network.where(friend: current_user).pluck('user_id')
		friends.push(session[:user_id])
		@not_friends = User.where.not(id: friends)
	end

	def show
		@friends = Network.where(accepted: true, user: current_user).includes(:user, :friend)
		@invites = Network.where(accepted: false, friend: current_user).includes(:user)
	end
end
