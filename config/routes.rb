Rails.application.routes.draw do
  resources :days
  resources :days_of_weeks
  resources :weeks
  resources :users
  root 'users#index'
end
