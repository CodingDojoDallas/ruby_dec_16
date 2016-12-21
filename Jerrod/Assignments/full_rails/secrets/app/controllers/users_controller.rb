class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    if user.valid?
      session[:id] = user.id
      session[:name] = user.name
      redirect_to user_path(user.id)
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path
    end
  end
  def show
    @user = User.includes(:secrets, :secrets_liked, :likes).find(params[:id])
    @secret = Secret.new

  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
