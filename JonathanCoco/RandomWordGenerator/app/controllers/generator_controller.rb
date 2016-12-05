class GeneratorController < ApplicationController
  def index
      if session[:name] == nil
            session[:name] = ''
            session[:count] = 0
        end
  end

  def generate

    session[:count] = session[:count] + 1

    prng = Random.new

    name = (1..15).collect{ (65+prng.rand(26)).chr}

    session[:name] = name.join

    redirect_to '/'
  end
end
