Rails.application.routes.draw do
  devise_for :users
  get "profile", to: "profile#show", as: :profile
  resources :shop, only: [ :index ] do
    resources :purchases, only: [ :create ]
  end

  post "inventory/activate",   to: "user_items#activate",   as: :activate_user_item
  post "inventory/deactivate", to: "user_items#deactivate", as: :deactivate_user_item

  get "up" => "rails/health#show", as: :rails_health_check

  resources :quests, only: [ :index, :show ] do
    resources :attempts, only: [ :create, :show ]
    post :reveal_hint, on: :member
  end

  root "quests#index"
end
