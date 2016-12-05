class TimesController < ApplicationController

  def main
      time = Time.new
      @current_time = time.strftime("%A %b %d, %Y %H:%M:%S")

      render "times/main"
  end
end
