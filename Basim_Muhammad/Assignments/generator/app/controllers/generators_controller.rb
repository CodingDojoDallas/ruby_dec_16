class GeneratorsController < ApplicationController
	def main
		@random_word=(0...8).map { (65 + rand(26)).chr }.join
		if session[:count]
			session[:count]+=1
		else
			session[:count]=1
		end
	end
end
