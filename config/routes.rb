Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]  
  #↑6-1 ユーザー編集画面表示に必要なルーティングedit,update
  resources :rooms, only: [:new, :create, :destroy] do
  resources :messages, only: [:index, :create]
  end
end
