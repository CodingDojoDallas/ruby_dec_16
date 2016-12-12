class UsersController < ApplicationController
	def main
		@users=User.all
		render 'main'
	end

	def new
		render 'new'
	end

	def create
		@user=User.create(user_params)
		puts @user
		redirect_to '/'
	end

	def update
		@this_user=User.find(params[:id])
		@this_user.update(user_params)
		redirect_to root_path
	end

	def delete
		@user=User.find(params[:id]).destroy
		redirect_to '/'
	end

	def show
		@user=User.find(params[:id])
		render 'show'
	end
	def edit
		@user=User.find(params[:id])
		render 'edit'
	end
	private 

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end


end
