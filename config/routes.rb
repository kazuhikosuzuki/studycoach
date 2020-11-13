Rails.application.routes.draw do
  get 'messages/index'
  root to: "messages#index"
  resources :meetings
  devise_for :users
 
end
