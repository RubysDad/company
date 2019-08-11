Rails.application.routes.draw do
  # resources :emails, only: %w[index new create show edit update]
  #
  resources :conversations do
    resources :emails
  end

  devise_for :users
  root to: 'conversations#index'
  mount ActionCable.server => '/cable'
end
