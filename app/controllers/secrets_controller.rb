class SecretsController < ApplicationController 
# before_action :require_login
# skip_before_action :require_login, only: [:new]
 

def new

end

    def show
if !session[:name]
    redirect_to '/login'

end
    end

    private
 
  def require_login
    return head(:forbidden) unless session.include? :name
  end

end