class ControllersController < ApplicationController
	def index
		render text: "What do you want to say?"
	end
  def hello
	  render text: "Hello CodingDojo!!!"
  end
	def say
		render text: "Saying Hello"
	end
	def joe
		render text: "Saying hello Joe!"
	end
	def michael
		redirect_to '/say/hello/joe'
	end
	def times
		if session[:times].nil?
			session[:times] = 1
			else
			session[:times] += 1
		end
		render = 'times'
	end
	def restart
		reset_session
		redirect_to '/'
	end
end
