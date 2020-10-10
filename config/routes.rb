Rails.application.routes.draw do
  get 'posts/new'
  #devise_for :admin_users
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "static_pages#home"

  resources :posts, only: [:new, :create, :destroy]

  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index]
    end
  end
end
