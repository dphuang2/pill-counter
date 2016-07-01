class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        #debugger # (from byebug gem)
    end

    def new
        @user = User.new
    end
end
