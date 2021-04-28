Rails.application.routes.draw do
  get 'list_items/create'
  get 'list_items/destroy'
  get 'lcart', to: 'lcart#show'
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'cart', to: 'cart#show'
  resources :brands
  resources :categories
  resources :products
  resources :order_items
  resources :list_items
  devise_for :accounts
  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
