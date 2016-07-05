class SessionsController < ApplicationController
  def new
  end

  def destroy
  end

  def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
          # login
      else
          flash.now[:danger] = 'Invalid email/password combination'
          render 'new'
          # render error message
      end
  end
end
