Rails.application.routes.draw do
  resources :messages, only: [:index, :create]
  resources :conversations, only: [:index, :create]
  resources :users, only: [:index, :update, :create]

  mount ActionCable.server => '/cable'
end
