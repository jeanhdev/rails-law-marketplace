Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/howitworks', to: 'pages#who'
end
