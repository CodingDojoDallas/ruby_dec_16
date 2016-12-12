class ControlsController < ApplicationController
  def hello
    render text: 'Hello CodingDojo!'
  end
  def sayhello
    render text: 'Saying Hello!'
  end
  def sayhelloname
    #wanted to test params so instead of redirecting to a path specifically
    #for joe, just ended up redirecting to Saying Hello!
    if params[:name] != 'joe'
      redirect_to '/say/hello'
      return
    end
    render text: 'Saying Hello Joe!'
  end
  def say
    render text: 'What do you want me to say?'
  end
  def times
    if !(session[:times])
      session[:times]=1
    else
      session[:times]+=1
    end
    render text: "You have visited this url #{session[:times]} time(s)."
  end
  def restart
    session.clear
    render text: "Destroyed the session!"
  end

end
