class RpgsController < ApplicationController
	def main
		if session[:gold].nil?
			session[:gold]=0
			session[:message]=[]
			session[:class] = "text-success"
		end
	end
	def farm
		farm = rand(10..20)
		
		session[:gold] += farm
		session[:message].push("You have earned #{farm} gold from the farm! #{Time.now}")
		session[:class] = "text-success"
		redirect_to root_path
	end
	def cave
		cave = rand(5..10)
		session[:gold] += cave
		session[:message].push("You have earned #{cave} gold from the cave! #{Time.now}")
		session[:class] = "text-success"
		redirect_to root_path
	end
	def house
		house = rand(2..5)
		session[:gold] += house
		session[:message].push("You have earned #{house} gold from the house! #{Time.now}")
		session[:class] = "text-success"
		redirect_to root_path
	end
	def casino
		casino = rand(-50..50)
		session[:gold] += casino
		if casino > 0
			session[:message].push("You have earned #{casino} gold from casino! #{Time.now}")
			session[:class] = "text-success"
			else
			session[:message].push("You have lost #{casino.abs} gold from casino Ouch! #{Time.now}")
			session[:class] = "text-danger"
		end
		redirect_to root_path
	end
	def clear
		session.clear
		redirect_to root_path
	end
end
