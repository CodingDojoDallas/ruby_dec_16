class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_action :require_correct_user, only: [:show, :edit, :update, :destroy]

  def show
    @user = current_user
  end
  def new
  end
  def edit
    @user = current_user
  end
  def create
    @user = User.create(user_params)
    if @user.errors.any?
      redirect_to '/users/new', alert: @user.errors.full_messages.unshift("Invalid")
    else
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    end
  end
  def update
    @user = current_user
    puts @user.inspect
    puts '!!'
    @user['name'] = params[:user]['name']
    @user['email'] = params[:user]['email']
    @user.save
    puts @user.inspect
    if @user.errors.any?
      redirect_to "/users/#{@user.id}/edit", alert: @user.errors.full_messages.unshift("Invalid")
    else
      redirect_to "/users/#{@user.id}"
    end
  end

  def destroy
    session[:user_id]=nil
    User.destroy(params[:id])
    redirect_to '/sessions/new'
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
