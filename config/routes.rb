Rails.application.routes.draw do
  # Define root URL for the application
  root "pages#index"

  # Pages routes
  get "home" => "pages#home"
  get "profile" => "pages#profile"

  devise_for :users
  # devise_for :users
  namespace :api do
    namespace :v1 do
      resources :tweets
      resources :sessions, only: %i[create destroy]
    end
  end
end
