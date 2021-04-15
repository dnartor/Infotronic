Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'cart', to: 'cart#show'
  delete '/order_items/deleteAll', to:'order_items#destroy_all'
  resources :brands
  resources :categories
  resources :products
  resources :order_items
  resources :order
  devise_for :accounts
  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
