class UsersController < ApplicationController
	def index

	end
	def create
		user = User.new(user_params)
		if user.save
			#if validations are passed
			session[:user_id] = user.id
			redirect_to '/dashboard'
		else
			#if validations are failed
			flash[:errors] = user.errors.full_messages 
			redirect_to '/'  
		end
	end
	def dashboard
           
	end
	def logout
		reset_session
		redirect_to('/') 
	end
	private
		def user_params
			params.require(:user).permit(:name,:email,:password,:password_confirmation)
		end
end
