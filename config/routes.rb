Rails.application.routes.draw do
  devise_for :users
  root to: 'plots#index'
 # Now we have the right root to our page, we shouldnt work on pages home.
  resources :plots, only: [:index, :show, :new, :create]
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
