class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # log in and go to the users show page
    else
      # create error message
      render 'new'
    end
  end

  def destroy

  end
end
