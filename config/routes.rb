Rails.application.routes.draw do
  devise_for :users
  get "profile", to: "profile#show", as: :profile
  resources :shop, only: [ :index ] do
    resources :purchases, only: [ :create ]
  end

  get "up" => "rails/health#show", as: :rails_health_check

  resources :quests, only: [ :index, :show ] do
    resources :attempts, only: [ :create, :show ]
  end

  root "quests#index"
end
