class SessionsController < ApplicationController
  def new
  end
  def log_in
    @user1 = User.where(email: user_params['email']).first
    if @user1.authenticate(user_params['password'])
      session[:user_id] = @user1.id
      redirect_to "/users/#{@user1.id}"
    else
      redirect_to '/sessions/new', alert: ["Invalid - Password and Email do not match."]
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to '/sessions/new'
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end

end
