Rails.application.routes.draw do
  devise_for :users, 
  :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  get 'u/:id' => 'users#show', as: :user

  resources :users, :only => [:show, :profile] do
    member do
      get :follow
      get :unfollow
    end
  end

  resources :genre
  resources :jams do
  	resources :comments
  end
  
  root 'pages#home'

  get "users/show"
end
