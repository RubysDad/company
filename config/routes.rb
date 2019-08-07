Rails.application.routes.draw do
  get 'chat_room/show'
  devise_for :users
  root to: 'dashboard#home'
  mount ActionCable.server => '/cable'
end
