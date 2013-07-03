Alogik::Application.routes.draw do
  resources :users, only: [:new, :create, :index]
  resource :user_sessions, only: [:new, :create, :destroy]

  root "users#index"
end