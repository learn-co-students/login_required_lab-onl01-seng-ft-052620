class SecretsController < ApplicationController
  def show
    redirect_if_not_logged_in
  end
end