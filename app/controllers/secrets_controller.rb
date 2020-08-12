class SecretsController < ApplicationController

  def show
    if current_user
    
    else
      redirect_to '/sessions/new'

    end
  end

end
