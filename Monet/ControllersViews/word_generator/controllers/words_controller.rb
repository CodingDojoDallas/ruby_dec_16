class WordsController < ApplicationController
	# class << self; attr_accessor :times end
	@@t =2

	def index
		@array = (1..14).collect{(([(0..9),("a".."z")].map{|i| i.to_a}.flatten).shuffle).first}.join
		if !session[:count]
			session[:count] = 1
		else
			session[:count] += 1
		end
		@times = @@t
		@@t +=1
	end
end
