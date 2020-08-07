class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if name && !name.empty?
      session[:name] = name
    else
      redirect_to login_path 
    end
  end

  def destroy
    session.delete :name
  end
end