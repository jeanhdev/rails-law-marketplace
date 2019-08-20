Rails.application.routes.draw do
  devise_for :users
  get 'profile', to: 'dashboard#profile'
  root to: 'pages#home'

  resources :services do
    resources :procedures, only: [:new, :create]
  end
  
  resources :procedures, only: [:edit, :update]
  resources :users, only: [:update]

  get '/edit_lawyer', to: 'users#edit_lawyer', as: 'edit_lawyer'

  
end

