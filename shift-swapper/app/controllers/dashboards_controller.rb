class DashboardsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def index
    render "shifts/dashboard"
  end
end