class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = params[:uname]
    debugger
    if @user && @user.authenticate(params[:Password])
        flash[:notice] = "Welcome #{@user.fname} #{@user.lname}!"
    else
        flash[:notice] = "Invalid UserName or Password."
        render 'new'
    end
  end

  def destroy
  end
  
end