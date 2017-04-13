class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)

        unless @user.errors.messages.empty?
            flash[:errors] = @user.errors.messages
            redirect_to :back
        else
            flash[:message] = "Welcome #{@user.username}"
            redirect_to "/messages"
        end


    end

    def user_params
        params.require(:user).permit(:username)
    end

end
