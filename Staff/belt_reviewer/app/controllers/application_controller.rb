class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
  	User.find(session[:user_id]) if session[:user_id]
  end

  def get_states
  	State.all
  end

  helper_method :current_user
  helper_method :get_states
end
