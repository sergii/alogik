Alogik::Application.routes.draw do
  resources :users, only: [:new, :create, :index, :edit]
  resource :user_session, only: [:new, :create, :destroy]

  root "users#index"
end