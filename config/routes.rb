Rails.application.routes.draw do
  # Define root URL for the application
  root 'pages#index'
  # Pages routes
  get 'pages/home'
  get 'pages/profile'
  devise_for :users
  # devise_for :users
  namespace :api do
    namespace :v1 do
      resources :tweets
      resources :sessions, only: [:create, :destroy]    
    end
  end
end
