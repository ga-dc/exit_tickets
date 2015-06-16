Rails.application.routes.draw do
  root to: "courses#index"
  resources :courses
  resources :surveys
  resources :users
end
