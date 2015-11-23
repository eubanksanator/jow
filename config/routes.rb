Rails.application.routes.draw do

   resources :workouts
   resources :users

   resources :weeks do
      resources :days
   end

   root 'weeks#index'
end
