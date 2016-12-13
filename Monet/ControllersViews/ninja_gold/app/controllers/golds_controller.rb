class GoldsController < ApplicationController

  def index
  	if !session[:play] || !session[:gold]
  		session[:gold]=0
  		session[:play]=[]
  	end
  end

  def gold_processing
  	if params[:building] == "Farm"
  		session[:play].push(rand(10..20))
  		session[:gold] += session[:play].last
  	elsif params[:building] == "Cave"
  		session[:play].push(rand(5..10))
  		session[:gold] +=session[:play].last
  	elsif params[:building] == "House"
  		session[:play].push(rand(2..5))
  		session[:gold] += session[:play].last
  	else
  		session[:play].push(rand(-50..50))
  		session[:gold] += session[:play].last
  	end
  	puts session[:play]
  	redirect_to "/"
  end
end
