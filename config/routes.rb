Rails.application.routes.draw do

  get '/', to: 'application#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/secret', to: 'secrets#show'
  
end
