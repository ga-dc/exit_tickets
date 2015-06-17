Rails.application.routes.draw do
  root to: "courses#index"
  resources :users
  resources :courses do
    resources :surveys, shallow: true
  end
end
