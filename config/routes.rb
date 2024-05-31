Rails.application.routes.draw do
  devise_for :users
  root to: "elves#index"

  resources :elves, only: %w[index show new create edit update destroy] do
    resources :bookings, only: %w[new create]
  end
  resources :bookings, only: %w[index destroy]

  get "pro", to: "pages#pro"
  get "part", to: "pages#part"
end
