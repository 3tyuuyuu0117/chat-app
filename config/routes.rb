Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  resources :users, only: [:edit, :update]  
  #↑6-1 ユーザー編集画面表示に必要なルーティングedit,update
end
