Rails.application.routes.draw do
  root 'gist#home'
  get 'gist' => 'gist#home'
  get 'gist/add' => 'gist#index'
  post 'gist/add' => 'gist#create'

end
