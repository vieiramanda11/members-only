Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_page#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/index', to: 'microposts#index'
  get '/micropost', to: 'microposts#new'
  resources :users
  resources :microposts, only: [:create, :index, :destroy]
end
