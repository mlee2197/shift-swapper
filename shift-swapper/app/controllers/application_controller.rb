class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :can_proceed
  helper_method :current_user, :logged_in?

  # Similar to a private method:  Can be invoked with or without self 
  #   OR an object that inherits from self (self represents THIS defining class)
  # Can NOT be invoked by a route!
  protected

  # guards against unauthorized access
  def can_proceed
    puts 'can_proceed'
    redirect_to index_path and return unless current_user
  end
  
  # accessor
  def current_user
    # Avoids unnecessary database queries if already set
    puts 'Some user'
    @current_user ||= User.find(session[:user_id])
  end

  # predicate
  def logged_in?
    # So it returns true or false
    !!current_user
  end
  
  # setter (gets set in sessions controller)
  def current_user=(user)
    @current_user = user
  end
end
