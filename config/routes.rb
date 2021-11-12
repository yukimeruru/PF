Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "about" => "homes#about"

  resource :users, only: [:edit, :update, :show, :destroy]
  get "users/out" => "users#out"

  resource :items

  resource :orders
  get "orders/reply" => "orders#reply"

end
