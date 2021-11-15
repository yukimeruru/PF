Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "about" => "homes#about"

  resources :users, only: [:edit, :index, :update, :show, :destroy] do
    post "orders" => "orders#create"
    get "orders" => "orders#index"
    get "orders/reply" => "orders#reply"
    get "orders/:id" => "orders#show"
    delete "orders/:id" => "orders#destroy"
    get "orders/reply" => "orders#reply"
  end

    get "items/:id/orders/new" => "orders#new"

  get "out" => "users#out"

  resources :items



end
