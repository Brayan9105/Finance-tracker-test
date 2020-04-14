Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  root 'welcome#index'
  get 'my_portafolio', to: 'users#my_portafolio'
  get 'search_stock', to: 'stocks#search'
end
