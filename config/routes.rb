Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "about" => "homes#about"

  resources :users, only: [:edit, :index, :update, :show, :destroy] do
    resources :orders,only: [:create, :destroy]
    resource :relationships, only: [:create, :destroy]
    get :followers, on: :member
    get :followeds, on: :member
  end

  get "items/:id/orders/new" => "orders#new" ,as: :new_orders
  get "users/:id/orders" => "orders#index" ,as: :orders
  get "items/:id/reply" => "orders#reply"
  get "orders/:id" => "orders#show" , as: :show_order
  delete "orders/:id" => "orders#destroy"
  get "orders/reply" => "orders#reply"

  get "out" => "users#out"

  resources :items do
    resource :favorites, only: [:create, :destroy]
  end

end
