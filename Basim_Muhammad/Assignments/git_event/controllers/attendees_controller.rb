class AttendeesController < ApplicationController
	before_action :check_login

	def destroy
		@user=User.find(session[:user_id])
		@party=Party.find(params[:id])
		@attendee=Attendee.where("user_id = ? AND party_id = ?", @user,@party)
		@attendee.destroy_all
		redirect_to parties_path
	end

	def update
		@user=User.find(session[:user_id])
		@party=Party.find(params[:id])
		Attendee.create(user:@user, party:@party)
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
end
