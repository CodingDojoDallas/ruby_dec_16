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

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password, :password_confirmation)
		end
end
