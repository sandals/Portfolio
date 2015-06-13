Rails.application.routes.draw do
  devise_for :users

  root 'shots#index', via: :get

  resources :shots, only: [:new, :create]
end
