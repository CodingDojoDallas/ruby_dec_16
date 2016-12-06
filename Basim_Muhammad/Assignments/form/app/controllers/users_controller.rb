class UsersController < ApplicationController
	def main

	end

	def create
		session[:new_user]=User.create(name:params['name'],location:params['location'],language:params['language'],comment: params['comment'])
		puts session[:new_user].name
		if session[:count]
			session[:count]+=1
		else
			session[:count]=0
		end

		flash[:notice] = "You have submitted #{session[:count]} forms"
		redirect_to '/result'
	end

	def result
	end
end
