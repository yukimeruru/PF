Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "about" => "homes#about"

  resources :users, only: [:edit, :index, :update, :show, :destroy] do
    post "orders" => "orders#create"

  end

  get "items/:id/orders/new" => "orders#new" ,as: :orders_new
  get "users/:id/orders" => "orders#index" ,as: :user_order
  get "orders/reply" => "orders#reply"
  get "orders/:id" => "orders#show" , as: :show_order
  delete "orders/:id" => "orders#destroy"
  get "orders/reply" => "orders#reply"

  get "out" => "users#out"

  resources :items



end
