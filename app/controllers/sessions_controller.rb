class SessionsController < ApplicationController

    # SessionsController create redirects to login page if :name is nil
    # redirects to login page if :name is nil
    # redirects to login page if :name is empty
    # sets session[:name] if :name was given
    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        session.destroy
        # reset_session can also be used
        redirect_to '/login'
    end

end
