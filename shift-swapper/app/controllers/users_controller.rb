class UsersController < ApplicationController
  def show
  end

  def index
  end

  def new
  end
 
 def create
    @user = User.create!(params.require(:user).permit(:fname,:lname,:uname,:pwd,:email))
    if @user.save
        flash[:notice] = "#{@user.fname} #{@user.lname} was successfully created."
        redirect_to index_path
    else
        flash[:notice] = "Seems like there is an issue creating the User."
    end
 end
end
