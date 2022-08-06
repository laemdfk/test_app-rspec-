Rails.application.routes.draw do

  # routing => " HTTPメソッド 'URL' => 'コントローラ#アクション' "の形"

  #root toを使うときは、 root to: 'コントローラ#アクション'の形で。

  root to: 'homes#top'
  get 'homes/about'

  resources :lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end