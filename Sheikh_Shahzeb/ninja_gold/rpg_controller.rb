class RpgController < ApplicationController
	def index
		if !session[:count]
			session[:count] = 0
		end
	end
	def farm
		session[:mini_count]= rand(10..20)
		session[:count] +=session[:mini_count]
		flash[:notice] = 'You gained'+' '+session[:mini_count].to_s+' '+'golds'
		redirect_to '/' 
	end
	def cave
		session[:mini_count] = rand(5..10)
		session[:count] +=session[:mini_count]
		flash[:notice] = 'You gained'+' '+session[:mini_count].to_s+' '+'golds'
		redirect_to '/'
	end
	def house
		session[:mini_count] = rand(2..5)
		session[:count] +=session[:mini_count]
		flash[:notice] = 'You gained'+' '+session[:mini_count].to_s+' '+'golds'
		redirect_to '/'
	end
	def casino
		session[:mini_count] = rand(-50..50)
		session[:count] +=session[:mini_count]
		if session[:mini_count] < 0
			flash[:notice] = 'You lost'+' '+session[:mini_count].to_s+' '+'golds'
		else flash[:notice] = 'You gained'+' '+session[:mini_count].to_s+' '+'golds'
		end
		redirect_to '/'
	end
	def reset
		reset_session
		redirect_to '/'
	end
end
