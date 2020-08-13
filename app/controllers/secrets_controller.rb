class SecretsController < ApplicationController
    before_action :login?

    def show
    end

    private
        def login?
            unless current_user
                redirect_to '/new'
            end
        end
end
