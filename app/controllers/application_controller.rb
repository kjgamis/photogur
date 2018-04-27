class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception




  private

  # this is the cookie that checks if a user_id exists. If it does, find will search for the user with that id and that User will be saved into current_user. This method identifies if user exists (boolean true/false)
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def load_picture
    @picture = Picture.find(params[:id])
  end

  def ensure_logged_in
    redirect_to root_path if !current_user
  end

  def ensure_ownership
    redirect_to root_path if current_user != @picture.user
  end

end
