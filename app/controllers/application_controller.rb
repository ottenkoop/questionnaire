class ApplicationController < ActionController::Base
  protect_from_forgery  

  private

  def current_user
    @current_user ||= User.find_by_auth_token( cookies[:auth_token]) if cookies[:auth_token]
  end

  def logged_in!
  	redirect_to "/log_in" unless current_user
  end

  helper_method :current_user
end