class SecretsController < ApplicationController

    before_action :is_logged_in?

    def show 
    end

    private 
        def is_logged_in? 
            redirect_to '/login' unless session.include? :name 
        end

end
