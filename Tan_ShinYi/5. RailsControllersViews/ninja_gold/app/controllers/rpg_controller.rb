class RpgController < ApplicationController
  def index
    if !session[:gold]
      session[:gold]=0
      session[:activities]=[]
    end
  end
  def farm
    gold = Faker::Number.between(10,20)
    session[:gold]+= gold
    time = Time.now.strftime("%Y/%m/%d %I:%M%p")
    session[:activities].unshift("Earned #{gold} golds from the farm! #{time}")
    redirect_to '/'
  end
  def cave
    gold = Faker::Number.between(5,10)
    session[:gold]+= gold
    time = Time.now.strftime("%Y/%m/%d %I:%M%p")
    session[:activities].unshift("Earned #{gold} golds from the cave! #{time}")
    redirect_to '/'
  end
  def house
    gold = Faker::Number.between(2,5)
    session[:gold]+= gold
    time = Time.now.strftime("%Y/%m/%d %I:%M%p")
    session[:activities].unshift("Earned #{gold} golds from the house! #{time}")
    redirect_to '/'
  end
  def casino
    gold = Faker::Number.between(-50,50)
    session[:gold]+= gold
    time = Time.now.strftime("%Y/%m/%d %I:%M%p")
    if gold > -1
      session[:activities].unshift("Earned #{gold} golds from the casino! #{time}")
    else
      session[:activities].unshift("Entered a casino and lost #{gold} golds... Ouch... #{time}")
    end
    redirect_to '/'
  end
  def reset
    session.clear
    redirect_to '/'
  end

end
