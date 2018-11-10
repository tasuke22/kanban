Rails.application.routes.draw do
  devise_for :users
  root 'top#index'

  # この行を編集する
  resources :list, only: %i(new create edit update destroy)
end