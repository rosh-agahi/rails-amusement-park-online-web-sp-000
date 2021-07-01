Rails.application.routes.draw do
  resources :attractions
  resources :rides
  root "layouts#welcome"
  
  resources :users, only: [:new, :create, :show]

  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  delete '/session', to: 'session#destroy'
  post '/rides', to: 'rides#create'
  
end
