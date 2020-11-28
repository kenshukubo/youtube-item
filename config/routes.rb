Rails.application.routes.draw do
  root "static_pages#home"
  get "/terms",  to: "static_pages#terms"
  get "/privacy_policy",  to: "static_pages#privacy_policy"
  get "/administrator",  to: "static_pages#administrator"

  resources :posts, only: [:index, :new, :create, :destroy, :show]
  resources :youtubers, only: [:index, :new, :create, :show, :destroy]
  resources :items, only: [:new, :create, :destroy]
  resources :categories, only: [:show]
  resources :searches, only:[:index]

  namespace :api do
    namespace :v1 do
      resources :youtubers, only: [:show]
      resources :header_menu, only: [:index]
      resources :widget, only: [:index]
    end
  end
end
