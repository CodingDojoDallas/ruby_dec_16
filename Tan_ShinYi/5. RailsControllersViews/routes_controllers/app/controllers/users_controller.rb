class UsersController < ApplicationController
  def index
    render json: User.all
  end
  def new
  end
  def create
    User.create(name:Faker::Name.first_name)
    redirect_to '/users'
  end
  def show
    render json: User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def total
    sum= User.count()
    render text: "Total number of users: #{sum}"
  end
end
