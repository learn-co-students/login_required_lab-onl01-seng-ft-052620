class SessionsController < ApplicationController

    def new
    end

    def create
        return redirect_to action:'new' if params[:name].nil? || params[:name]==""
        session[:name] = params[:name]

        redirect_to controller: 'application', action: 'home'
    end

    def destroy
        session.delete :name
        redirect_to controller: 'application', action: 'home'
    end

end
