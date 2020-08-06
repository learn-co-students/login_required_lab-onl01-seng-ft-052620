class SecretsController < ApplicationController
  before_action :is_logged_in?, except: [:new] 
  
  def show

  end


  private
   def is_logged_in?
    redirect_to '/login' unless session.include? :name
   end
end
