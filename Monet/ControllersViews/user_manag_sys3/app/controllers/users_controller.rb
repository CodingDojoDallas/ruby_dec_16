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
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @update_user = User.find(params[:id])
    if @update_user.update(user_params)
      flash[:success] = "Success - User #{@update_user.first_name} UPDATED!"
      redirect_to "/users"
    else
      puts @update_user.errors
      puts "******************************"
      flash[:errors] = @update_user.errors.full_messages
      redirect_to "/users/#{@update_user.id}/edit"
    end
  end
  def destroy
    User.find(params[:id]).destroy
    redirect_to "/users" 
  end



  private
	  def user_params
	  	params.require(:user).permit(:first_name, :last_name, :email_address, :password)
	  	
	  end
end
