Rails.application.routes.draw do
  devise_for :users
  # devise_for :users

  # Define root URL for the application
  root "tweets#index"

  namespace :api do
    namespace :v1 do
      resources :tweets
      resources :sessions, only: %i[create destroy]
    end
  end
end
