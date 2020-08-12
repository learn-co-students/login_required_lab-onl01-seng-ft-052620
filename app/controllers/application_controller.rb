class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # 1. returns the name of the current user
  # 2. returns nil if nobody is logged in
  def current_user
    session[:name]
  end

  def require_login
		if !logged_in?
			redirect_to '/login'
		end
  end

  def logged_in?
		!!current_user
	end
  
end
