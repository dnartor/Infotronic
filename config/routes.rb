Rails.application.routes.draw do
  resources :histories
  get 'list_items/create'
  get 'list_items/destroy'
  get 'lcart', to: 'lcart#show'
  resources :claims
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  delete '/order_items/deleteAll', to:'order_items#destroy_all'
  get 'cart', to: 'cart#show'
  get 'ofertas', to: 'ofertas#show'
  get '/moon', to: 'application#moon', as: 'moon'
  get '/sun', to: 'application#sun', as: 'sun'
  resources :brands
  resources :categories
  resources :products
  resources :order_items
  resources :list_items
  devise_for :accounts
  resources :accounts
  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end