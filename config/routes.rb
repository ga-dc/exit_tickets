Rails.application.routes.draw do
  root to: 'courses#index'
  resources :users
  resources :courses do
    resources :surveys, shallow: true
  end

  get 'login',     to: 'sessions#new'
  get 'logout',    to: 'sessions#destroy'
  post 'sessions', to: 'sessions#create'
end
