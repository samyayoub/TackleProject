Rails.application.routes.draw do

  resources :teams
  devise_for :users
  root 'projects#index'
  resources :projects, only: [:new, :create, :show]

  resources :users, only: :show
  
  resources :projects do
    resources :events, only: :create
  end
  
end
