class SecretsController < ApplicationController
  def index
    @secrets = Secret.all.includes(:likes, :user, :users_liked)
    @user = current_user
  end
  def create
    secret = User.find(session[:id]).secrets.create(secret_params)
    if !secret.valid?
      flash[:errors] = secret.errors.full_messages
    end
    redirect_to user_path(session[:id])
  end
  def destroy
    Secret.find(params[:id]).destroy
    redirect_to :back
  end

  private

  def secret_params
    params.require(:secret).permit(:content)
  end
end
