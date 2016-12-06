class UsersController < ApplicationController
  def index
  	render json: User.all
  end

  def new
  	render "users/new"
  end

  def create
  	User.create(name:Faker::Name.name)
  	redirect_to "/users"
  end
  def show
  	render json: User.find(params[:id])
  end
  def edit
  	session[:id] = params[:id]
  	session[:name] = User.find(params[:id]).name
  	render
  end
  def update
  	id = params[:id]
  	the_name = params[:name]
  	User.find(id).update(name:the_name)
  	redirect_to "/users"
  	
  end
  def total
  	render text: "There are #{User.count} users"
  	
  end
end
