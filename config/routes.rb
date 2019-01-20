Rails.application.routes.draw do
  resources :products, only: [:index]
  resource :carts, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"

  post 'carts/purchase'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
