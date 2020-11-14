Rails.application.routes.draw do
  devise_for :users
  root to: "meetings#index"
  resources :meetings
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:index ,:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
  
 
end
