Rails.application.routes.draw do
  root 'welcome#index'

  resources :user_stocks, only: [:create, :destroy]

  devise_for :users
  get 'my_friends', to: 'users#my_friends'
  get 'my_portafolio', to: 'users#my_portafolio'
  get 'search_stock', to: 'stocks#search'
  get 'search_friend', to: 'users#search'
  resources :friendships, only: [:create, :destroy]
  resources :users, only: [:show]
end
