class TimesController < ApplicationController

	def index	
	end
	def main
		@time = DateTime.now
		render 'times/time'
	end
end
