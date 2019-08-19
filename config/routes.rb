Rails.application.routes.draw do
  devise_for :users
  root to: 'couples#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :couples, only: [:new, :create, :index, :show, :destroy] do
    resources :bookings, only: [:create, :update]
  end

  resources :dashboards, only: [:show]
end
