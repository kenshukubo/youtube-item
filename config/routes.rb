Rails.application.routes.draw do
  root "static_pages#home"

  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index]
    end
  end
end
