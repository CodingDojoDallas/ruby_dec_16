class HelloController < ApplicationController
  def index
  end

  def new
  end

  def times
  	if not session[:count]
  		session[:count] = 1
  	else
  		session[:count] +=1
  	end
  	render text: "You have visited this page #{session[:count]}"
  end

  def times_restart
  	session[:count] = nil
  	render text: "Destroyed the session!"
  end

end
