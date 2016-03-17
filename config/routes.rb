Rails.application.routes.draw do
  root 'gist#test'
  get 'gist' => 'gist#home'
  get 'gist/add' => 'gist#index'
  post 'gist/add' => 'gist#create'

end
