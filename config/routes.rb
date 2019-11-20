Rails.application.routes.draw do
  devise_for :users
  root to: 'plots#index'
 # Now we have the right root to our page, we shouldnt work on pages home.
  resources :plots, only: [:index, :show, :new, :create] do
      resources :bookings, only: [:new, :create]
  end
  resources :users, only: [:show]
  resources :bookings, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
