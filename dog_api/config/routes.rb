Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :dogs, only: [:index, :create]
      resources :owners, only: [:index, :create]
      resources :dogparks, only: [:index, :create]
      resources :visits, only: [:index, :create]
    end
  end
end
