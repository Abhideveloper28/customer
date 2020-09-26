Rails.application.routes.draw do
  constraints format: :json do
    namespace :api, as: nil do
      devise_for :users
      resources :users
    end
  end
end
