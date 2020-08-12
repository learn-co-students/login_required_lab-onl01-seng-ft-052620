class SecretsController < ApplicationController
    before_action :current_user

    def show
     if current_user != nil
        render 'show'
     else
        redirect_to '/'
     end
    end

end