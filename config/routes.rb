Rails.application.routes.draw do
  get 'messages/index'
  root to: 'meetings#index'
  resources :meetings
  devise_for :users
 
end
