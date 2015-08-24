Rails.application.routes.draw do
  resources :jams

  root 'jams#index'
end
