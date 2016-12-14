class SecretsController < ApplicationController
  before_action :require_login, only: [:index, :create, :destroy]
  def index
    @secrets=Secret.all
  end
  def create
    @secret = User.find(session[:user_id]).secrets.create({content: params[:secret]['content']})
    if @secret.errors.any?
      redirect_to "/users/#{session[:user_id]}", alert: @secret.errors.full_messages
    else
      redirect_to "/users/#{session[:user_id]}"
    end
  end
  def destroy
    secret = Secret.find(params[:id])
    secret.destroy if secret.user == current_user
    redirect_to "/users/#{current_user.id}"
  end
end
