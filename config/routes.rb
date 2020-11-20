Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  root to: "meetings#index"
  resources :meetings
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:index ,:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
  
 
end
