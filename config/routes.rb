Rails.application.routes.draw do
  get 'posts/new'
  #devise_for :admin_users
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "static_pages#home"

  resources :posts, only: [:index, :new, :create, :destroy]
  resources :youtubers, only: [:index, :new, :create, :show, :destroy]
  resources :items, only: [:new, :create, :destroy]
  resources :categories, only: [:show]

  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index]
      resources :youtubers, only: [:show]
    end
  end
end
