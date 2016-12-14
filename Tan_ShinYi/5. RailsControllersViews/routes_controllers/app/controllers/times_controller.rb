class TimesController < ApplicationController
  def main
    time = Time.now
    @date = time.strftime("%b %d, %Y")
    @time = time.strftime("%I:%M%p")
  end
end
