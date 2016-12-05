class UsersController < ApplicationController
  def index
    @Users = User.all()
  end

  def new
    @user  = User.new

    render "/users/new"
  end


  def create
    bError = false

    flash[:first_name] = ""
    flash[:last_name] = ""
    flash[:email_address] = ""

    @user  = User.new
    @value = ""

    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email_address = params[:email_address]
    @user.password = params[:password]

    if @user.save()

      redirect_to '/users'
    else
      @user.errors.each do |attr, msg|

        if attr.to_s == "first_name"
          flash[:first_name] =  flash[:first_name] + " #{msg}, "
        elsif attr.to_s == "end_name"
          flash[:last_name] =  flash[:last_name] + " #{msg}, "
        elsif attr.to_s == "email_address"
          flash[:email_address] =  flash[:email_address] + " #{msg}, "
        end

      end
      render "/users/new"
    end

  end

  def edit

    @user  = User.find(params[:id])

    render "/users/edit"

  end

  def show

    @user  = User.find(params[:id])

    render "/users/show"

  end

  def show

    @user  = User.find(params[:id])

    render "/users/show"

  end


    def destroy

      user  = User.find(params[:id])

      user.destroy()

      redirect_to '/users'

    end


  def update

    flash[:first_name] = ""
    flash[:last_name] = ""
    flash[:email_address] = ""

    @user = User.find(params[:id])

    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email_address = params[:email_address]
    @user.password = params[:password]


    if @user.save()
      redirect_to '/users'
    else

      @user.errors.each do |attr, msg|

        if attr.to_s == "first_name"
          flash[:first_name] =  flash[:first_name] + " #{msg}, "
        elsif attr.to_s == "last_name"
          flash[:last_name] =  flash[:last_name] + " #{msg}, "
        elsif attr.to_s == "email_address"
          flash[:email_address] =  flash[:email_address] + " #{msg}, "
        end

      end

      render "/users/edit"

    end
  end


end
