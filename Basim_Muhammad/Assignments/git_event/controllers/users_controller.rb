class UsersController < ApplicationController
	before_action :check_login, except: [:index,:register,:create]
	def index

	end

	def create
		user=User.new(user_params)
		if user.save
			session[:user_id]=user.id
			redirect_to parties_path
		else
			flash[:errors]=user.errors.full_messages
			redirect_to users_path
		end
	end

	def register
		user=User.find_by(email: login_params[:email])
		if user && user.authenticate(login_params[:password])
			session[:user_id] = user.id
			redirect_to parties_path
		else
			flash[:errors] = 'Invalid credentials'
			redirect_to users_path
		end
	end

	def destroy
		session[:user_id]=nil
		redirect_to users_path
	end

	def edit
		@user=User.find(params[:id])
	end

	def update
		@user=User.find(params[:id])
		if @user.update(edit_params)
		 	redirect_to parties_path
		else
			flash[:errors] = @user.errors.full_messages
			redirect_to "/users/#{@user.id}/edit"
		end
	end

	private

	def user_params
		params.require(:user).permit(:first_name,:last_name,:email,:city,:state,:password,:password_confirmation)
	end

	def login_params
		params.require(:user).permit(:email,:password)
	end

	def edit_params
		params.require(:user).permit(:first_name,:last_name,:email,:city,:state)
	end

	def check_login
		if session[:user_id] 

		else
			flash[:errors] = "You must be logged in to access this section"
			redirect_to users_path
		end
	end
end
