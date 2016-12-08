class UsersController < ApplicationController
	def index
		@num = rand(2...100)
		if !session[:number]
			session[:number] = @num
		end
	end
	def submit
		if params[:number].to_f < session[:number]
			flash[:notice] = 'Number was too low!'
		elsif params[:number].to_f > session[:number]
			flash[:notice] = 'Number was too high!'
		else params[:number].to_f == session[:number]
			flash[:notice] = 'Correct!'
		end
		redirect_to '/'
	end
	def clear 
		reset_session
		redirect_to '/'
	end
end
