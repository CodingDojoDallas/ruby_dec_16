class UsersController < ApplicationController
	def create
		user = User.new(user_params)
		if user.save
			#if validations are passed
			session[:user_id] = user.id
			redirect_to '/dashboard'
		else
			flash[:errors] = user.errors.full_messages
			redirect_to '/'
		end
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :password_digest, :password_confirmation)
		end
end