class GamesController < ApplicationController
  def index
    if !session[:number]
      session[:number]= Faker::Number.between(1,100)
    end
    puts "NUMBER: #{session[:number]}"
  end

  def reset
    session.clear
    redirect_to '/'
  end

  def guess
    if params[:guess].to_i == session[:number]
      session[:color]="green"
      session[:message]= "You guessed it! The number was #{session[:number]}!"
    else
      session[:color]="red"
      if params[:guess].to_i < session[:number]
        session[:message]= "Too low!"
      else
        session[:message]= "Too high!"
      end
    end
    redirect_to '/'
  end

end
