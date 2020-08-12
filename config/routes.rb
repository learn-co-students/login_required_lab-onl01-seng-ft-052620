Rails.application.routes.draw do

  root 'sessions#new'
  get '/secrets/show' => 'secrets#show'
  get '/' => 'sessions#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
