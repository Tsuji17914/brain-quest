Rails.application.routes.draw do
  devise_for :users
  resource :profile, only: [ :show ]

  get "up" => "rails/health#show", as: :rails_health_check

  resources :quests, only: [ :index, :show ] do
    resources :attempts, only: [ :create, :show ]
  end

  root "quests#index"
end
