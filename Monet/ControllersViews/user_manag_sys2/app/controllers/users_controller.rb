class UsersController < ApplicationController
  def index
  	@users = User.all
  end
  def new
  	@user = User.new	
  end
  def create
  	@new_user = User.create(user_params)
  	if @new_user.errors.any?
  		flash[:error] = @new_user.errors.full_messages
  		redirect_to "/users/new"
  	else
    flash[:success] = "Success - a new User!"
    redirect_to "/users"
    end
  end



  private
	  def user_params
	  	params.require(:user).permit(:first_name, :last_name, :email_address, :password)
	  	
	  end
end
