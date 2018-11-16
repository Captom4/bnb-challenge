Rails.application.routes.draw do
  resources :spaces
  devise_for :users
  root 'visitors#index'
end
