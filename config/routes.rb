Rails.application.routes.draw do
  devise_for :users
  resources :jams do
  	resources :comments
  end

  root 'jams#index'
end
