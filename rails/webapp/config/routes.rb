Rails.application.routes.draw do
  root 'domain#index'

  resources :todos, only: [:index, :create, :destroy]
end
