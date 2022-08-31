Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]  
  #↑6-1 ユーザー編集画面表示に必要なルーティングedit,update
  resources :rooms, only: [:new, :create]
  #↑vol2.3新規チャットルームの作成で動くアクションは「new」と「create」のみ
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
