Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_page#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  resources :users
end
