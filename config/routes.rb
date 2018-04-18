Rails.application.routes.draw do
  resources :comments
  get 'favorites/index'

  get 'topics/new'

  get 'sessions/new'

  get 'users/new'

  get 'pages/index'
  root 'pages#index'
  get 'pages/help'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources 'users'
  resources 'topics'
  post '/favorites', to: 'favorites#create'
   get '/favorites', to: 'favorites#index'
end
