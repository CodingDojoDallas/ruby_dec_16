class LikesController < ApplicationController
  before_action :require_login
  def create
    @user = User.find(session[:user_id])
    @secret = Secret.find(params['secret_id'])
    @like = Like.where(user: @user, secret: @secret)
    puts '!!!!'
    puts @like
    puts '!!!'
    if @like == []
      Like.create(user: @user , secret: @secret)
    end
    redirect_to '/secrets'
  end

  def destroy
    @user = User.find(session[:user_id])
    @secret = Secret.find(params['secret_id'])
    @like = Like.where(user: @user.id, secret: @secret)

    if @like.length>0
      @like[0].destroy
    end
    redirect_to '/secrets'
  end
end
