Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profile', to: 'dashboard#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update, :delete] do
    resources :services
    resources :procedures, except: [:destroy]
  end
  get '/users/:id/edit_lawyer', to: 'users#edit_lawyer', as: 'edit_lawyer'
  patch '/users/:id/update_lawyer', to: 'users#update_lawyer'
end
