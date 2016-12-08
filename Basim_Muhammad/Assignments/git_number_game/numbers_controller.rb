class NumbersController < ApplicationController
	def main
		if !session[:number]
			session[:number]=rand(1..100)
		end
		render 'main'
	end

	def process_number
		if session[:number]<params[:num].to_i
			flash[:notice] = "Guess greater than Number"
		elsif session[:number]>params[:num].to_i
			flash[:notice] = "Guess less than Number"
		else
			session[:number]=rand(1..100)
			flash[:notice] = "Correct Try again"
		end

		redirect_to root_path
	end
end
