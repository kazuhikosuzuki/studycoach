Rails.application.routes.draw do
  get 'messages/index'
  root to: "messages#index"
  resources :meetings
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
  devise_for :users
 
end
