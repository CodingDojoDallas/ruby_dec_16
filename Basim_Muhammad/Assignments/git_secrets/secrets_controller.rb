class SecretsController < ApplicationController
	def index
		@count=Like.all.group(:secret_id).count
		@secrets=Secret.all
		@user=User.find(session[:user_id])
	end

	def destroy 
		Secret.destroy(params[:id])
		redirect_to secrets_path
	end
	
end
