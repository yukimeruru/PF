Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "about" => "homes#about"

  resources :users, only: [:edit, :index, :update, :show, :destroy]
  get "out" => "users#out"

  resources :items

  get "items/:id/orders/new" => "orders#new"
  get "users/:id/orders" => "orders#index"
  post "users/:id/orders" => "orders#create"
  get "users/:id/orders/reply" => "orders#reply"
  get "users/:id/orders/:id" => "orders#show"
  delete "users/:id/orders/:id" => "orders#destroy"
  get "orders/reply" => "orders#reply"

end
