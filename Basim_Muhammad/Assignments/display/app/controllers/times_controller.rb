class TimesController < ApplicationController
	def main
		@time=Time.now.strftime("%H:%M:%S")
	end
end
