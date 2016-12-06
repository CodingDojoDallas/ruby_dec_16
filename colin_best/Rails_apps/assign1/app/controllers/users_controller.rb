class UsersController < ApplicationController
  def index
    render json: User.all
  end
  def new
    render "new"
  end
  def show
    @user = User.find(params[:id])
    render 'show'
  end
  def edit
    @edit = User.find(params[:id])
    render 'edit'
  end
  def total
    @total = User.all
    render 'total'
  end
end
