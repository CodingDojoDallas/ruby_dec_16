class SurveysController < ApplicationController
	def index
		session[:survey].clear
	end
	def create
		session[:survey] = params[:survey]
		puts session[:survey]
		
		if session[:counter].nil?
			session[:counter]=0
			else
			session[:counter]+=1
		end
		flash[:message]= "You have submitted this form succesfully #{session[:counter]}"
		redirect_to surveys_results_path
	end
	
end
