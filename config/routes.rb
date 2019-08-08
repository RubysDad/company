Rails.application.routes.draw do
  resources :emails, only: %w[index new create show edit update]
  get 'chat_room/show'
  devise_for :users
  root to: 'dashboard#home'
  mount ActionCable.server => '/cable'
end
