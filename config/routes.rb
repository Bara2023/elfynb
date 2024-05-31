Rails.application.routes.draw do
  devise_for :users
  root to: "elves#index"

  resources :elves, only: %i[index show new create edit update destroy] do
    resources :reviews, only: %i[create]
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index destroy]

  get "dashboard", to: "pages#index"
end
