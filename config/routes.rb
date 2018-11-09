Rails.application.routes.draw do
  
  devise_for :users
  root "top#index" #root（トップページ「/」）に訪れた際にtopコントローラーのindexアクションを実行
end
