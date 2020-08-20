class SessionsController < ApplicationController
  def new
  end

  def create
    user = params[:name]
    if user.nil? || user == ""
      redirect_to login_path
    else
      session[:name] = user
      redirect_to show_path
    end
  end

  def destroy
    if !session[:name].nil?
    session.delete :name
    end
  end

end
