Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals do
    resources :bookings, only: [:new, :create]
  end

  resources :bleeds

  resources :species

  resources :petsitters

  resources :users, except: [:destroy] do
    resources :bookings, only: [:create, :edit, :update]
    resources :petsitters
  end

  resources :bookings do
    resources :reviews, only:[:new, :create]
  end

  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
end
