Rails.application.routes.draw do
  # resources :emails, only: %w[index new create show edit update]
  #
  resources :conversations do
    resources :emails
  end

  get 'chat_room/show'
  devise_for :users
  root to: 'dashboard#home'
  mount ActionCable.server => '/cable'
end
