class UsersController < ApplicationController
    def show
        @user = User.find(session[:user_id])
    end

    def new
        user = User.new
    end

    def create
        user = User.new(user_params)

        if user.save
            redirect_to "/users/#{user.id}"
        else
            flash[:messages] = user.errors.full_messages
            redirect_to '/users/new'
        end
    end

    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
        end
end
