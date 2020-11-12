Rails.application.routes.draw do
  root to: 'meetings#index'
  resources :meetings
  devise_for :users
 
end
