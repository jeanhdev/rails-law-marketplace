Rails.application.routes.draw do
  devise_for :users
  get 'profile', to: 'dashboard#profile'
  root to: 'pages#home'

  resources :users, only: [:show, :edit, :update, :delete]
  resources :services do
    resources :procedures, except: [:destroy]
  end

  get '/edit_lawyer', to: 'users#edit_lawyer', as: 'edit_lawyer'

end

