Rails.application.routes.draw do

   resources :workouts
   resources :users
   # resources :days

   resources :weeks do
      resources :days
   end

   root 'weeks#index'
end
