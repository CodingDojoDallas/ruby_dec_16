class UsersController < ApplicationController

    def index

        @Users = User.all()

        if session[:count_refresh] == nil
            session[:count_refresh] = 0
        else
            session[:count_refresh ] = session[:count_refresh] + 1
        end

        flash[:error1] = "test error 1"
        flash[:error2] = "test error 2"
        flash[:error3] = "test error 3"

    end

    def new
        render "users/new" #renders the all.html.erb view in the views/products folder
    end

    def create

        user  = User.new
        #user.name = Faker::Name.name
        user.name = params[:name]

        user.save()


        redirect_to '/users'
    end

    def edit

        @user  =  User.find(params[:id])

        render "users/edit"

    end

    def update

        @user  =  User.find(params[:id])
        @user.name = params[:name]
        @user.save()

        redirect_to '/users'

    end

    def destroy

        @user  =  User.find(params[:id])
        @user.destroy()

        redirect_to '/users'

    end

    def show

        @user  =  User.find(params[:id])

    end


    def total
        @total = User.all().count()

        render  "users/total"
    end
end
