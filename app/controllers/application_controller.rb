class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :session_redirect

  def session_redirect
    if current_user.nil? || current_user == ''
      redirect_to login_path
    end
  end

  def current_user
    user = session[:name]
  end
end
