Rails.application.routes.draw do
  resources :spaces
  resources :requests
  devise_for :users
  root 'visitors#index'
end
