Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :plots, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
      resources :bookings, only: [:new, :create]
  end
  resources :users, only: [:show]
  resources :bookings, only: [:index, :edit, :update, :destroy] do
    resources :reviews, except: [:index, :show, :edit]
  end
end
