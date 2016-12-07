class GamesController < ApplicationController
	def main
		if session[:num].nil?
			session[:num]= rand(1..100)
		end
	end
	def check
		num = params[:guess][:num].to_i	

			if num < session[:num]
				flash[:answer] = "Number is greater try again"
				redirect_to root_path
			elsif num > session[:num]
				flash[:answer] = "Number is smaller try again"
				redirect_to root_path
			else
				session.clear
				flash[:win]= "You guessed the number correctly"
				redirect_to root_path
			end
	end
	def clear
		session.clear
		
		redirect_to root_path
	end
end
