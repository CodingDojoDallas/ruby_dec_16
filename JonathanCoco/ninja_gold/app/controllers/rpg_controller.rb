class RpgController < ApplicationController
  def index

    if session[:your_gold] == nil
        session[:your_gold] = 0
        session[:your_activities] = []
    end

  end

  def process_money

    prng = Random.new

    building = params[:building]

    color = 'green'
    money = 0
    activity = ''

    if building == "farm"
      money = prng.rand(10...20)
    elsif building ==  "cave"
      money = prng.rand(5...10)
    elsif building == "house"
      money = prng.rand(2...5)
    elsif building == "casino"
      money = prng.rand(-50...50)
    end

    session[:your_gold] = session[:your_gold] + money

    time = Time.new

    if money > 0
        activity = "Earned #{money} from the #{building} on (#{time.strftime("%A %b %d, %Y %H:%M:%S")})."
    else
        activity = "Lost #{money} from the #{building} on (#{time.strftime("%A %b %d, %Y %H:%M:%S")}). Ouch!!!"
    end

    if money < 0
      color = 'red'
    end

    activity = {:activity => activity, :color =>color}

    session[:your_activities].insert(-1, activity)

    redirect_to '/'
  end

  def reset
    session.clear
    redirect_to '/'
  end
end
