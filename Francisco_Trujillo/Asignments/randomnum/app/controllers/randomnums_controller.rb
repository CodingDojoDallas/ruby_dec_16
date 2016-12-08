class RandomnumsController < ApplicationController
	def main
	end
	def generate
		if session[:counter].nil?
			session[:counter]=1
			else
			session[:counter]+=1
			
			
		end
		session[:num] = SecureRandom.base64(14)
		redirect_to root_path
	end
end
