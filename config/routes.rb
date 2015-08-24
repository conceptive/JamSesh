Rails.application.routes.draw do
  resources :jams

  root 'jam#index'
end
