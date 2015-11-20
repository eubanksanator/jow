Rails.application.routes.draw do
  resources :workouts
  resources :days
  resources :weeks
  resources :users

  root 'users#index'
end
