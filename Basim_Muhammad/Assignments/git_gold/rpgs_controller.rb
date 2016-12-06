class RpgsController < ApplicationController
	def main
		if !session[:gold] 
			session[:gold]=0
		end

		if !session[:activities] 
			session[:activities]=[]
		end

		render 'main'
	end

	def farm
		@result=rand(10..20)
		session[:activities].push(@result)
		session[:gold]+=@result

		redirect_to root_path
	end

	def cave
		@result=rand(5..10)
		session[:activities].push(@result)
		session[:gold]+=@result

		redirect_to root_path
	end

	def house
		@result=rand(2..5)
		session[:activities].push(@result)
		session[:gold]+=@result

		redirect_to root_path
	end

	def casino
		@result=rand(0..50)
		session[:activities].push(@result)
		session[:gold]+=@result

		redirect_to root_path
	end


end
