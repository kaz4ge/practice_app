Rails.application.routes.draw do
  root to: 'users#index'
  resources :products, only: :index
  resources :products, only: :new

  root 'products#index'
  resources :products, except: :show
end