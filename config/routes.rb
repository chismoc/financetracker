Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root 'welcome#index'


  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
 end
