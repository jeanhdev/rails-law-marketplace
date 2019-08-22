Rails.application.routes.draw do
  devise_for :users
  get 'profile', to: 'dashboard#profile'
  root to: 'pages#home'
  patch 'procedures/:id/accept', to: 'procedures#accept', as: "accept"
  patch 'procedures/:id/refuse', to: 'procedures#refuse', as: "refuse"

  resources :users, only: [:edit, :update]
  resources :services do
    resources :procedures, except: [:destroy]
  end

  get '/edit_lawyer', to: 'users#edit_lawyer', as: 'edit_lawyer'

  get '/service_divorce', to: 'services#divorce', as: 'service_divorce'

  get '/profile_saul', to: 'services#profile_saul', as: 'profile_saul'

end
