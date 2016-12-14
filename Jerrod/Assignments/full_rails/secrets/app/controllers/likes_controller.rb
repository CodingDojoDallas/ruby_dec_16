class LikesController < ApplicationController
  def create
    Like.create(secret: Secret.find(params[:secret_id]), user: current_user)
    redirect_to :back
  end
  def destroy
    Like.find_by(user: current_user, secret: Secret.find(params[:id])).destroy
    redirect_to :back
  end
end
