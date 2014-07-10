class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  private
 # look up this syntax, I think this pipes current user to user.find for the session
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
end
