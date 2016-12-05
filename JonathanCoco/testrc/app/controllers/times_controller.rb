class TimesController < ApplicationController
  def index
      if session[:count] == nil
          session[:count] = 1
      else
          session[:count] = session[:count] + 1
      end

      @count = session[:count]


  end

  def restart
      session[:count] = nil
  end
end
