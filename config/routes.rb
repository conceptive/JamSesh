Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users, :only => [:show]
  resources :genre
  resources :jams do
  	resources :comments
  end
  root 'pages#home'
end
