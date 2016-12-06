class SayController < ApplicationController
	def index
		render "say/index"
	end

	def hello
		render "say/hello"
	end
	def joe
		render text: "Say Hello Joe!"
	end

end
