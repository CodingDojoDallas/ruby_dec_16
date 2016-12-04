class NumberGameController < ApplicationController
  def index
      if session[:number] == nil
          prng = Random.new
          session[:number] = prng.rand(1...100)
          session[:state] = ''
      end
  end

  def process_guess

     guess = params[:user_guess]

     if guess.to_i == session[:number]
         session[:state] = 'found'
     elsif guess.to_i > session[:number]
         session[:state] = 'high'
     elsif guess.to_i < session[:number]
         session[:state] = 'low'
     end

     redirect_to '/'

  end

  def play_again
      session.clear

      redirect_to '/'
  end
end
