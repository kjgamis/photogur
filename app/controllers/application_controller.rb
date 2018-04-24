class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # this is the cookie that checks if a user_id exists. If it does, find will search for the user with that id and that User will be saved into current_user. This method identifies if user exists (boolean true/false)
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
end
