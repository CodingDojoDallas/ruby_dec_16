class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :delete]
  def set_user
    @user=User.find(params[:id])
  end
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    puts 'MADE IT TO CREATE METHOD'
    @user = User.create(user_params)
    if @user.errors.any?
      puts @user.errors
      redirect_to '/users/new', alert: @user.errors.full_messages
    else
      redirect_to '/'
    end
  end
  def show
  end
  def edit
  end
  def update
    @user.update_attributes(user_params)
    if @user.errors.any?
      puts @user.errors
      redirect_to "/users/#{@user.id}/edit", alert: @user.errors.full_messages
    else
      redirect_to '/'
    end
  end
  def delete
    @user.destroy
    redirect_to '/'
  end
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email_address, :password)
    end
end
