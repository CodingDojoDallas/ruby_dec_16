class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if !user
      flash[:errors] = 'Invalid email'
      redirect_to new_session_path
    elsif !user.authenticate(params[:password])
      flash[:errors] = 'Invalid password'
      redirect_to new_session_path
    else
      session[:id] = user.id
      session[:name] = user.name
      redirect_to user_path(user.id)
    end
  end

  def destroy
    session.clear
    redirect_to new_session_path
  end
end
