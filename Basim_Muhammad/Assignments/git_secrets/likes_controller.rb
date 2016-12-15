class LikesController < ApplicationController
	def create
		@user=User.find(session[:user_id])
		@secret=Secret.find(params[:id])
		Like.create(user: @user, secret: @secret)
		redirect_to secrets_path
	end

	def destroy
		@user=User.find(session[:user_id])
		@secret=Secret.find(params[:id])
		@like=Like.where("secret_id = ? AND user_id = ?", @secret,@user)
		@like.destroy_all
		redirect_to secrets_path
	end
end
