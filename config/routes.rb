Rails.application.routes.draw do
  #devise_for :admin_users
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "static_pages#home"

  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index]
    end
  end
end
