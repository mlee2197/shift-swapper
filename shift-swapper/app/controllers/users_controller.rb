class UsersController < ApplicationController
    
    def user_params
        params.require(:user).permit(:name, :email, :dininghalls)
    end
    
    def create
        @user = User.find(session[:user_id])
        @user.update!(user_params)
        message = "#{self.current_user.name}, Your profile  has been updated."
        flash[:notice] = message
        redirect_to dashboard_path
    end
  
    def show
    end

    def index
    end

    def new
    end
 
end
