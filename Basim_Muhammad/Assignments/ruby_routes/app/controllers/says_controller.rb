class SaysController < ApplicationController
	def hello

		render text: 'hello coding dojo'
	end

	def hello2
		render text: 'Saying Hello!'
	end

	def joe
		render text:'saying hello joe'
	end

	def michael
		redirect_to '/say/hello/joe'
	end

	def index
		render text: 'what ou want me to say'
	end

	def times 
		if session[:count]
			session[:count]+=1
		else
			session[:count]=0
		end

		render text: session[:count]
	end

	def restart
		flash[:notice] = "You destroyed session"
		session[:count]=nil
		redirect_to '/times'
	end
end
