Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users
  # Defines the root path route ("/")
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get 'search_friend', to: 'users#search'

  resources :friendships, only: [:create, :destroy]
  resources :users, only: [:show]
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
 end
