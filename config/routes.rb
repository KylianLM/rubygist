Rails.application.routes.draw do
  root 'gist#home'
  get 'gist' => 'gist#home'
  post 'gist' => 'gist#category'
  get 'gist/add' => 'gist#index'
  post 'gist/add' => 'gist#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
