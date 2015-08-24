Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]
  resources :jams do
  	resources :comments
  end

  root 'jams#index'
end
