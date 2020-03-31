Rails.application.routes.draw do
  devise_for :users
  root to: 'materials#index'

  namespace :materials do
    resources :searches, only: :index
  end

  resources :materials do
    resources :comments, only: :create
  end

  resources :users, only: :show
end