Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:dashboard, :show, :edit, :update, :delete] do
    resources :services
    resources :procedures, except: [:destroy]
  end

  # resources :users do
  #   collection do
  #   get :dashboard
  # end
  # end

end

