Rails.application.routes.draw do
  devise_for :users
  root to: "elves#index"
  
  resources :elves, only: %w[index show new create destroy]
end
