Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]  #ここがeditとupdateになるのは暗記部分
  resources :rooms, only: [:new, :create, :destroy] do #上記同様。新規チャットルームの作成で動くアクションは「new」と「create」
    resources :messages, only: [:index, :create]
  end
end
