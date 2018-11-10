Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  # この一行に書き換える
  resources :list, only: %i(new create)
end