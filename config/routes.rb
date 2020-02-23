Rails.application.routes.draw do
  resources :sessions, only: [:create, :destroy]
  resources :messages, only: [:create, :index]
end
