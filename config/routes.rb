Rails.application.routes.draw do
  devise_for :users
  get 'profile', to: 'dashboard#profile'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users, only: [:show, :edit, :update, :delete] do
  #   resources :services
  #   resources :procedures, except: [:destroy]
  # end

  resources :services do
    resources :procedures, only: [:new, :create]
  end

  resources :procedures, only: [:edit, :update]

  # get '/users/:id/edit_lawyer', to: 'users#edit_lawyer', as: 'edit_lawyer'
  # patch '/users/:id/update_lawyer', to: 'users#update_lawyer'
end

