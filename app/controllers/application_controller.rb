class ApplicationController < ActionController::Base
helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def authenticate_user!
    unless current_user 
      redirect_to login_path
    end
  end
  def logged_in?
    current_user
  end
  def logged_in
    @user = User.all
    flash.now[:notice] = "We have exactly #{@user} books available."
    redirect_to users_path
  end
    
end
