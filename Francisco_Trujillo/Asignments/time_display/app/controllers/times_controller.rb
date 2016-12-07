class TimesController < ApplicationController
  def main
	  
	  @time = Time.zone.now
	  #('2016-12-06 15:00:00', '%Y-%m-%d', now=now())
  end
end
