class UsersController < ApplicationController
	def create
		user = User.new(
			user_params.merge({state: State.find(user_params[:state])})
		)
		if user.save
			session[:user_id] = user.id
			redirect_to '/events'
		else
			flash[:errors] = user.errors.full_messages
			redirect_to '/sessions/new'
		end
	end

	def edit
		@user = current_user
	end

	def update
		user = current_user
		if user.update(user_params.merge(state: State.find(user_params[:state])))
			redirect_to '/events'
		else
		 flash[:errors] = user.errors.full_messages
		 redirect_to "/users/#{user.id}/edit"
		end
	end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password, :password_confirmation)
		end
end
