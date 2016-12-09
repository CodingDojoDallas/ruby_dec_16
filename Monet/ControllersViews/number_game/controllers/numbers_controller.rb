class NumbersController < ApplicationController
	attr_reader :random_num

  def index
  	if !session[:random_num]
  		session[:random_num] = rand(1..100)
  	end
  	
  end

  def check_guess
  	# puts session[:random_num]
  	# puts "*********************"
  	# puts params[:guess]
  	if params[:guess] > session[:random_num].to_s
  		flash[:fail]= "Too high!"
  	elsif params[:guess] < session[:random_num].to_s
  		flash[:fail]= "Too low!"
  	else
  		flash[:success]= "#{params[:guess]} was the number!"
  		session.clear
  	end
  	redirect_to '/' 	
  end
end
