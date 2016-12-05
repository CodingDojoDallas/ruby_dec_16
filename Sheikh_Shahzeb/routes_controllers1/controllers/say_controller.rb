class SayController < ApplicationController
	def index

	end
	def show

	end
	def hello

	end
	def joe

	end
	def michael
		redirect_to '/say/hello/joe'
	end
	def count
		if not session[:id]
			session[:id] = 0
		end
		@count = session[:id]+=1
	end
	def restart
		session[:id] = 0
	end
end
