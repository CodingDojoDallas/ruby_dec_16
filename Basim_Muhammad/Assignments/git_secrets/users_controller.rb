class UsersController < ApplicationController

	def main

	end

	def create
		user=User.new(user_params)
		if user.save

			session[:user_id] = user.id
			redirect_to secrets_path
		else
			flash[:errors]=user.errors.full_messages
			redirect_to '/'
		end
	end
	def show

	end

	def register
		user=User.find_by(email: login_params[:email])
		if user && user.authenticate(login_params[:password])
			session[:user_id] = user.id
			redirect_to secrets_path
		else
			flash[:errors] = 'Invalid credentials'
			redirect_to '/users/register'
		end
	end

	def destroy 
		Secret.destroy(params[:id])
		redirect_to secrets_path
	end

	private
	def user_params
		params.require(:user).permit(:name,:email,:password,:password_confirmation)
	end

	def login_params
	params.require(:user).permit(:email,:password)
	end
end

# #LOGIN METHOD
# #under private - strong params
# def login_params
# 	params.require(:login).permit(:email,:password)
# end
# def create 
# 	user=User.find_by(email: login_params[:email])
# 	if user && user.authenticate(login_params[:password])
# 		session[:user_id] = user.id
# 		redirect_to 'index page'
# 	else
# 		flash[:errors] = 'Invalid credentials'
		# redirect_to login page
# 	end
