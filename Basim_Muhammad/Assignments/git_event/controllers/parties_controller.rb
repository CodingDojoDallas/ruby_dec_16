class PartiesController < ApplicationController
	before_action :check_login

	def show
		@party=Party.find(params[:id])
		@count=@party.attendees.count
		puts @count
	end

	def create
		@user=User.find(session[:user_id])
		Party.create(party_params.merge({user:@user}))
		redirect_to parties_path
	end

	def index
		@user=User.find(session[:user_id])
		@local_parties=Party.where(state: @user.state)
		@outside_parties=Party.where.not(state: @user.state)
	end

	def destroy
		@party=Party.find(params[:id])
		@party.destroy
		redirect_to parties_path
	end

	private

	def check_login
		if session[:user_id] 

		else
			flash[:errors] = "You must be logged in to access this section"
			redirect_to users_path
		end
	end

	def party_params
		params.require(:party).permit(:name,:date,:city,:state)
	end
end
