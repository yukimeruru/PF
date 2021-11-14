Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "about" => "homes#about"

  resources :users, only: [:edit, :index, :update, :show, :destroy]
  get "out" => "users#out"

  resources :items

  resources :orders
  get "orders/reply" => "orders#reply"

end
