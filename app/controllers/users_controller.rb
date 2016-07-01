class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        #debugger # (from byebug gem)
    end

    def new
    end
end
