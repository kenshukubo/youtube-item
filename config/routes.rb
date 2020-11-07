Rails.application.routes.draw do
  get 'posts/new'
  #devise_for :admin_users
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "static_pages#home"
  get "/terms",  to: "static_pages#terms"
  get "/privacy_policy",  to: "static_pages#privacy_policy"
  get "/administrator",  to: "static_pages#administrator"

  resources :posts, only: [:index, :new, :create, :destroy]
  resources :youtubers, only: [:index, :new, :create, :show, :destroy]
  resources :items, only: [:new, :create, :destroy]
  resources :categories, only: [:show]
  resources :searches, only:[:index]

  namespace :api do
    namespace :v1 do
      resources :youtubers, only: [:show]
      resources :header_menu, only: [:index]
    end
  end
end
