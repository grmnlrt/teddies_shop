Rails.application.routes.draw do
  devise_for :users
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  root 'teddies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teddies, only: [:index, :show]
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end
