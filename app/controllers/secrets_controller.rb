class SecretsController < ApplicationController
    before_action :logged_in?

    def show
    end

    private

    def logged_in?
        return redirect_to controller: 'sessions', action: 'new' if !current_user
    end

end
